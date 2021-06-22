library(shiny)

# Common structure:
# ui:    `*Output("id")`
# server: `output$id <- render*({ ... })`

ui <- fluidPage(
    textOutput("some_text"),

    plotOutput("some_plot", width = "400px"),

    tableOutput("some_table")
)

data <- reactive({
  head(mtcars, 15)
})

server <- function(input, output, session) {
  output$some_text <- renderText("Text")

  output$some_plot <- renderPlot({
    data <- head(mtcars, 15)
    plot(data$disp, data$mpg)
  })

  output$some_table <- renderTable(data())
}

shinyApp(ui, server)
