source('~/R6-Presentation/Shape.R')

Square = R6Class(classname="Square"
   , inherit=Shape
   , public = list(
     initialize = function(..., width) {
       super$initialize(...)
       if(!missing(width)) {
         private$width = width
       }
     }
     , Draw = function(gp = NULL) {
       grid.rect(x = private$x
                 , y=private$y
                 , width = private$width
                 , height=private$width
                 , gp=gp)
     }
     , SetWidth = function(val) {
       self$Width = val
       return(invisible(self))
     }
   )
   , private = list(
     width = .2
   )
   , active = list(
     Width = function(val) {
       if(missing(val)) {
         return(private$width)
       } else {
         private$width = val
       }
     }
   )
)