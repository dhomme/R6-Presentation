source('~/Scripts/R6-Presentation/Shape.R')

Circle = R6Class(classname="Rectangle"
   , inherit=Shape
   , public = list(
     Draw = function(gp=NULL) {
       grid.circle(x = private$x
                   , y=private$y
                   , r = private$radius)
     }
   )
   , private = list(
     radius = .2
   )
   , active = list(
     Radius = function(val) {
       if(missing(val)) {
         return(private$radius)
       } else {
         private$radius = val
       }
     }
   )
)