Shape = R6Class(classname = "Shape"
  , public = list(
      initialize = function(x, y) {
        if(!missing(x)) {
          private$x = x
        }
        if(!missing(y)) {
          private$y = y
        }
      }
      , Draw = function() {
        
      }
      , SetX = function(val) {
        self$X = val
        return(invisible(self))
      }
      , SetY = function(val) {
        self$Y = val
        return(invisible(self))
      }
    )
  , private = list(
      x = .5
      , y = .5
    )
  , active = list(
      X = function(val) {
        if(missing(val)) {
          return(private$x)
        } else {
          private$x = val
        }
      }
      , Y = function(val) {
        if(missing(val)) {
          return(private$y)
        } else {
          private$y = val
        }
      }
    )
)
