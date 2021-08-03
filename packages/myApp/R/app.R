#' @import shiny
summaryDataset <- function() {
  ui <- shiny::fluidPage(
    shiny::selectInput("dataset", label = "DATASET", choices = ls("package:datasets")),
    verbatimTextOutput("summary"),
    tableOutput("table")
  )

  server <- function(input, output, session) {
    output$summary <- renderPrint({
      dataset <- get(input$dataset, "package:datasets")
      summary(dataset)
    })

    output$table <- renderTable({
      dataset <- get(input$dataset, "package:datasets")
      dataset
    })
  }

  shinyApp(ui, server)
}
