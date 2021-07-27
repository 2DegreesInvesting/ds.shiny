library(shiny)
source(here::here("debugging", "utils.R"))

ui <- fluidPage(
  selectInput("n", "N", 1:10),
  tableOutput("table"),
  plotOutput("plot")
)
server <- function(input, output, session) {
  dataset <- reactive({
    n <- times2(input$n)
    head(cars, n)
  })

  output$table <- renderTable({
    dataset()
  })

  output$Plot <- renderPlot({
    plot(dataset())
  })
}
shinyApp(ui, server)
