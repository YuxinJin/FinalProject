#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.

library(shiny)
library(ggplot2)
library(plotly)
library(colourpicker)
load("~/Desktop/TRGN510/FinalProject/ShinyData.RData")

# Define UI for application that draws a heatmap
ui <- fluidPage(
   
   # Application title
   titlePanel("Gene Expression"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        colourInput("low", "Low Expression Colour", "red"),
        colourInput("mid", "Mid Expression Colour", "white"),
        colourInput("high", "High Expression Colour", "purple")
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotlyOutput("GeneHeatmap")
      ),
      position = c("right")
   )
)

# Define server logic required to draw a heatmap
server <- function(input, output) {
   
   output$GeneHeatmap <- renderPlotly({
      
      # draw the heatmap to show the selected gene expression level
      ggplotly(ggplot(SelectGene.Melt , aes(x = GeneID, y = CaseID)) + geom_raster(aes(fill = Expression)) + scale_fill_gradient2(low=input$low, mid=input$mid, high=input$high, midpoint=0.5) + labs(x = "GeneID", y = "CaseID") + theme(plot.title = element_blank(),axis.text.x = element_blank(), axis.text.y = element_blank())
   )})
}

# Run the application 
shinyApp(ui = ui, server = server)

