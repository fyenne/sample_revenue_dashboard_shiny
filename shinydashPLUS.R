library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(bs4Dash)

ui <- dashboardPage(
  dashboardHeader(title = "Basic dashboard"),
  dashboardSidebar(),
  dashboardBody(
    # Boxes need to be put in a row (or column)
    fluidRow(
      box(plotOutput("plot1", height = 250)),
      
      box(
        title = "Controls",
        sliderInput("slider", "Number of observations:", 1, 100, 50),
        
      box(
          solidHeader = FALSE,
          title = "Status summary",
          background = NULL,
          width = 12,
          status = "danger",
          footer = fluidRow(
            column(
              width = 6,
              descriptionBlock(
                number = "17%", 
                number_color = "green", 
                number_icon = "fa fa-caret-up",
                header = "$35,210.43", 
                text = "TOTAL REVENUE", 
                right_border = TRUE,
                margin_bottom = FALSE
              )
            ),
            column(
              width = 6,
              descriptionBlock(
                number = "18%", 
                number_color = "red", 
                number_icon = "fa fa-caret-down",
                header = "1200", 
                text = "GOAL COMPLETION", 
                right_border = FALSE,
                margin_bottom = FALSE
              )
            )
          )
        )
      )
    )
  )
)
 

server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}

shinyApp(ui, server)

# https://raw.githubusercontent.com/plotly/datasets/master/2014_world_gdp_with_codes.csv