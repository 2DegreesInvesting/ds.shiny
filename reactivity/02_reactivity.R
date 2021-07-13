# Recipes ---

# What's going on here?

  output$greeting <- renderText({
    paste0("Hello ", input$name, "!")
  })

# > paste together ‘hello’ and the user’s name?

# Wrong because you only issue the instruction once.

# Think of your app as providing Shiny with recipes, not giving it commands.

# Lazy ----

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

# You don't get an error. Why?
server <- function(input, output, session) {
  output$grXXting <- renderText({
    paste0("Hello ", input$name, "!")
  })
}
shinyApp(ui, server)



# The reactive graph ---

# https://mastering-shiny.org/basic-reactivity.html#the-reactive-graph

# |input>  >output|
# |name>  >greeting|
server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0("Hello ", input$name, "!")
  })
}

# |input>  >reactive-expression>  >output|
# |name>  >string>  >greeting|
server <- function(input, output, session) {
  string <- reactive(paste0("Hello ", input$name, "!"))
  output$greeting <- renderText(string())
}



# Execution order ---

server <- function(input, output, session) {
  string <- reactive(paste0("Hello ", input$name, "!"))
  output$greeting <- renderText(string())
}
shinyApp(ui, server)

# Will this work?
server <- function(input, output, session) {
  output$greeting <- renderText(string())
  string <- reactive(paste0("Hello ", input$name, "!"))
}
shinyApp(ui, server)



# Why do we need reactive expressions? ----

# https://mastering-shiny.org/basic-reactivity.html#reactive-roadblocks
