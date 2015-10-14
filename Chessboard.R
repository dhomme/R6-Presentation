source('~/Scripts/R6-Presentation/Shape.R')

grid.newpage()
pushViewport(viewport(just=c("center", "center")))

chesstool = Square$new()

# Draw Base
board_width = .8
board_margin = .1
chesstool$Width = board_width + board_margin
chesstool$Draw(gpar(col="burlywood4", fill="burlywood4"))

## Draw Inset
chesstool$Width = board_width
chesstool$Draw(gpar(col="antiquewhite", lwd=10, linejoin="mitre"))

board_square_width = board_width/8
chesstool$Width = board_square_width
gp$lwd = 0

# Loop through the ranks
for(i in 0:7) {
  #Loop through the files
  chesstool$Y = .15+(i*board_square_width)
  for(j in 0:7) {
    if(j %% 2 == i %% 2) {
      gp$fill = "burlywood4"
    } else {
      gp$fill = "antiquewhite"
    }
    chesstool$X = .15+(j*board_square_width)
    chesstool$Draw(gp)
  }
}