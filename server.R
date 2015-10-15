library(shiny)
source("R/Chessboard.R")
# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$chessPlot <- renderPlot({
    
    # Render a barplot
    ChessBoard(input$style)
  })
})