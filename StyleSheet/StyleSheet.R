source('~/R6-Presentation/StyleSheet/ProtoStyleSheet.R')

StyleSheet <- R6Class(
      inherit = ProtoStyleSheet
    , private = list(
      ###########################################
      ###########################################
      ###########################################
      ## List of General Variables for use
        col.base03=       "#002b36"       ### DARKER
      , col.base02=       "#073642"
      , col.base01=       "#586e75"
      , col.base00=       "#657b83"
      , col.base0=        "#839496"
      , col.base1=        "#93a1a1"
      , col.base2=        "#eee8d5"
      , col.base3=        "#fdf6e3"       ### LIGHTER
      
      ## List of General Properties
      , square.gp = gpar(col="_col.base03", fill="_col.base2", lwd=1)
      , square.just = c("left", "bottom")
      
      , circle.gp = gpar(col="_col.base02", fill="_col.base3", lwd=1)
      , circle.just = c("center", "center")
      
      , rectangle.gp = gpar()
      , rectangle.just = c("left", "bottom")
      ###########################################
      ###########################################
      ###########################################
      
    )
)