source('~/R6-Presentation/StyleSheet/StyleSheet.R')

ChessboardStyle <- R6Class(
      inherit = StyleSheet
    , private = list(
      ###########################################
      ###########################################
      ###########################################
        col.dark = "burlywood4"
      , col.light = "antiquewhite"
      ## List of General Properties
      , square.gp.chess = gpar(fill="_col.dark", lwd=0, linejoin="mitre")
      , square.gp.chess.inset = gpar(col="_col.light", lwd=10)
      , square.gp.chess.light = gpar(fill="_col.light")

      ###########################################
      ###########################################
      ###########################################
      
    )
)