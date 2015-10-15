ProtoStyleSheet = R6Class("ProtoStyleSheet"
    , public = list(
      initialize = function() {
        ## This tricky little loop allows us to late binding on a property property to previously assigned property
        ##  If a property has the value of a string with the underscore prefix "_prop.name" it wil
        ##  take the value of the property private$prop.name
        
        ## It also will do replacements within lists (such as gpar()).  The one caveat for that
        ##  is, gpar will not allow you to set a numeric property to a string so it only works on
        ##  gpar properties that already allow for strings (col, fill, fontfamily, fontface, lty)
        for(item in ls(envir = private)) {
          prop_item = private[[item]]
          
          if(is.character(prop_item) && length(prop_item)==1) {
            prefix = substr(prop_item, start = 1, 1)
            if(prefix == "_") {
              prop = substr(prop_item, 2, nchar(prop_item))
              private[[item]] = private[[prop]]
            }
          } else if (is.list(prop_item)) {
            ## The item is a list, loop through it to 
            ##  determine if it has any special assignments
            for(jtem in names(prop_item)) {
              list_item = prop_item[[jtem]]
              if(is.character(list_item)) {
                
                prefix = substr(list_item, start = 1, 1)
                if(prefix == "_") {
                  prop = substr(list_item, 2, nchar(list_item))
                  prop_item[[jtem]] = private[[prop]]
                }
              }
            }
            private[[item]] = prop_item
          }
          #print(private[[item]])
        }
      }
      
      ## Main public method for getting a style
      , Get = function(style_name) {
        style = private[[style_name]]
        path = strsplit(style_name, '[.]')[[1]]
        path_minus_suffix = path[1:length(path)-1]
        style_minus_suffix = paste(path_minus_suffix, collapse = ".")
        if(is.null(style)) {
          ## Let's remove a suffix and try again
          ##  to get a more base classes
          if(length(path) > 1) {
            style = self$Get(style_minus_suffix)
          } else {
            style = NULL
          }
        }
        
        if(is.list(style)) {
          # If this is a list, let's overlay it with it's more base styles
          if(length(path) > 1) {
            style = private$Overlay(self$Get(style_minus_suffix), style)
          }
        }
        return(style)
      }
    )
    , private = list(
      
      # Overlay one list on top of another
      Overlay = function(a,b) {
        if(is.null(a)) {
          a = b
        } else if (!is.null(b)) {
          for(i in 1:length(b)) {
            b_key = names(b)[i]
            a[[b_key]] = b[[b_key]]
          }
        }
        return(a)
      }
    )
)
