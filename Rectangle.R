source('~/Scripts/R6-Presentation/Shape.R')

Rectangle = R6Class(classname="Rectangle"
    , inherit=Square
    , public = list(
      initialize = function(..., height) {
        super$initialize(...)
        if(!missing(height)) {
          private$height = height
        }
      }
      , Draw = function(gp=NULL) {
        grid.rect(x = private$x
                  , y = private$y
                  , width = private$width
                  , height = private$height
                  , gp = gp
                  , just = c("center", "center"))
      }
    )
    , private = list(
      height = .2
    )
    , active = list(
      Height = function(val) {
        if(missing(val)) {
          return(private$height)
        } else {
          private$height = val
        }
      }
    )
)