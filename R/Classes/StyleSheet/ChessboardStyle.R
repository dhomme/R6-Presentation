# source('R/Classes/StyleSheet/BaseStyleSheet.R')

ChessboardStyle <- R6Class(
      inherit = BaseStyleSheet
    , private = list(
      ###########################################
      ###########################################
      ###########################################
        col.dark = "black"
      , col.light = "white"
      ## List of General Properties
      , square.gp.chess = gpar(fill="_col.dark", lwd=0, linejoin="mitre")
      , square.gp.chess.inset = gpar(col="_col.light", lwd=10)
      , square.gp.chess.light = gpar(fill="_col.light")
      
      , chess.border_margin = .15

      ###########################################
      ###########################################
      ###########################################
      
    )
)
