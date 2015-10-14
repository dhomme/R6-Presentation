ShapeFactory = R6Class(
  public = list(
      GetShape = function(type) {
        if(type == "square") {
          shape = Square$new()
        } else if(type == "rectangle") {
          shape = Rectangle$new()
        } else if (type == "circle") {
          shape = Circle$new()
        }
        return(shape)
      }
    )
)


