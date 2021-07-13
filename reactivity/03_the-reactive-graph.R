# The reactive graph ----

library(shiny)
# install.packages("reactlog")
reactlog::reactlog_enable()

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0("Hello ", input$name, "!")
  })
}
shinyApp(ui, server)

# |name> >greeting|
# greeting will need to be recomputed whenever name is changed
# greeting has a reactive depencency on name



server <- function(input, output, session) {
  string <- reactive(paste0("Hello ", input$name, "!"), label = "string")
  output$greeting <- renderText(string())
}
shinyApp(ui, server)
# |name> >string> >greeting|
# greeting has a reactive depencency on string
# string has a reactive depencency on name



# Simplifying a complex app with reactive expressions ---

# App: https://hadley.shinyapps.io/ms-case-study-1/
# Graph: https://mastering-shiny.org/basic-reactivity.html#the-reactive-graph-1

# See A step by step tour of reactive execution ---
# https://mastering-shiny.org/reactive-graph.html#step-through
