
# shinyapp + TAB
library(shiny)

# Common structure
# *Input(inputID, label)
ui <- fluidPage(  # Generates the user interface (front end)
  textInput("name", "Free text"),

  sliderInput("num", "Numeric input", value = 0, min = 0, max = 100),

  dateInput("dob", "Date input"),

  selectInput("state", "Limited choices", state.name),

  fileInput("upload", "File uploads"),
  # not "*Input" unfortunately
  actionButton("click", "Action buttons")
)

# drives your app’s behaviour (the back end).
server <- function(input, output, session) {
}

shinyApp(ui, server)
