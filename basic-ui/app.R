# Separation between front/back
# shinyapp + TAB

# Common structure, e.g. ?selectInput
# * `inputID` connects front/back end
# front: `*Input(inputId = "name", ...)`  # frontend
# back:              `input$name`


# shinyapp + TAB
library(shiny)

# generates your user interface (the front end)
ui <- fluidPage(
  textInput("name", "Free text"),

  sliderInput("num", "Numeric input", value = 0, min = 0, max = 100),

  dateInput("dob", "Date input"),

  selectInput("state", "Limited choices", state.name),

  fileInput("upload", "File uploads"),

  actionButton("click", "Action buttons")
)

# drives your app’s behaviour (the back end).
server <- function(input, output, session) {
}

shinyApp(ui, server)
