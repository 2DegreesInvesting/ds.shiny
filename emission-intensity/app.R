library(shiny)
library(r2dii.plot)

ui <- fluidPage(
  selectInput("sector", label = "Sector", choices = unique(sda$sector)),
  checkboxInput("extrapolate", label = "Extrapolate"),
  plotOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderPlot({
    sda |>
      subset(sector == input$sector) |>
      plot_timeline(extrapolate = input$extrapolate)
  })
}

shinyApp(ui, server)
