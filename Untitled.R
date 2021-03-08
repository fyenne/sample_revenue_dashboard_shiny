# library(rCharts)
# library(shiny)
# X <- data.frame(Var1 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L,8L, 9L, 10L, 1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 1L, 2L,3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L),
#                 Var2 = structure(c(1L,1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L,2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L), .Label = c("control","treatment1", "treatment2"), class = "factor"),
#                 Freq = c(0L, 0L, 3L, 2L, 6L, 9L, 13L, 36L, 50L, 497L, 0L, 2L, 1L, 3L, 6L, 4L, 11L, 29L, 50L, 499L, 1L, 2L, 0L, 2L, 5L, 6L, 12L, 22L, 63L,490L)
# )
# runApp(
#   list(ui = fluidPage(
#     titlePanel("Quiz 3 grades distribution"),
#     sidebarLayout(
#       sidebarPanel(
#         helpText("Quiz 3 grade distribution by treatment group"),    
#         # selectInput("select", label = h3("Select box"), 
#         #             choices = list("All" = 0, "Not Perfect" = 1, "Perfect" = 2), 
#         #             selected = 0)
#       ),
#       
#       mainPanel(
#         showOutput("histogram","Nvd3")
#       )
#     )
#   ),
#   server = shinyServer(
#     function(input, output, session) {
#       output$histogram <- renderChart2({
#         n2 <- rPlot(y = 'Freq', x = 'Var1', 
#                     group = 'Var2',
#                     data = X, type = 'Line')
#         n2
#       })
#     }
#   )
#   
#   )
# )


  # n2 <- nPlot(Freq ~ Var1, group = 'Var2', data = X, type = 'multiBarChart')
  # n2
#  
# m1 <- rPlot(x = 'date', y = c('psavert', 'uempmed'), type = 'Line',
#             data = econ)
# m1$set(pointSize = 0, lineWidth = 1)
# m1$addParams(dom = 'myChart')
# m1
  
# econ %>% View
 