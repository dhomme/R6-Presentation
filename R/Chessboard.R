source('~/R6-Presentation/R/Classes/Shape.R')
source('~/R6-Presentation/R/Classes/StyleSheet/HouseOfStaunton.R')
ChessBoard = function(style="Basic") {
  grid.newpage()
  pushViewport(viewport(just=c("center", "center")))
  
  chesstool = Square$new()
  if(style=="Basic") {
    chess_style = ChessboardStyle$new()
  } else if (style=="House of Staunton") {
    chess_style = HouseOfStaunton$new()
  }
  
  # Draw Base
  board_width = .8
  board_margin = chess_style$Get('chess.border_margin')
  chesstool$Width = board_width + board_margin
  #chesstool$Draw(gpar(col="black", fill="black"))
  chesstool$Draw(chess_style$Get('square.gp.chess'))
  
  ## Draw Inset
  chesstool$Width = board_width
  #chesstool$Draw(gpar(col="white", lwd=10, linejoin="mitre"))
  chesstool$Draw(chess_style$Get('square.gp.chess.inset'))
  
  board_square_width = board_width/8
  chesstool$Width = board_square_width
  
  # Loop through the ranks
  for(i in 0:7) {
    #Loop through the files
    #chesstool$Y = .15+(i*board_square_width)
    for(j in 0:7) {
      if(j %% 2 == i %% 2) {
        gp = chess_style$Get('square.gp.chess.dark')
      } else {
        gp = chess_style$Get('square.gp.chess.light')
      }
      chesstool$SetX(.15+(j*board_square_width))$SetY(.15+(i*board_square_width))$Draw(gp)
      #chesstool$Draw(gp)
    }
  }
}