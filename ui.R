library(shiny)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Chessboard"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        radioButtons('style', 'Style:',
                     c("Basic"='Basic',
                       "House of Staunton"='House of Staunton'),
                     'Basic'),

        hr(),
        helpText("Select the style of chessboard.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("chessPlot")  
      )
      
    )
  )
)
