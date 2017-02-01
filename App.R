library(plotly)
library(shiny)



f1 <- list(
  # family = "Times New Roman, Times, serif",
  family = "Apple Braille",
  size = 9,
  color = "black"
)

m <- list(
  l = 129,
  r = 50,
  b = 100,
  t = 25,
  pad = 4
)

# heat_map <- function(sex_selected){
# if (sex_selected == "Male"){
#   sex_cancer <- data_male
#   nms <- names(data_male)
# } else if (sex_selected == "Female"){
#   sex_cancer <- data_female
#   nms <- names(data_female)
# } else if (sex_selected == "Both"){
#   sex_cancer <- data
#   nms <- names(data)
# }
# sex_cancer <- sex_cancer %>%
#   dplyr::filter(sex == sex_selected)

# correlation <- round(cor(sex_cancer),3)
# plot_ly(x = nms, y = nms, z = correlation, 
#         # colors = colorRamp(c("blue","yellow")),
#         key = correlation, type = "heatmap") %>%
#   layout(title = "Correlation between the mortalities of any pair of 34 sites of cancer in the United States",
#          font = f1,
#          margin = m,
#          xaxis = list(title = "", tickfont = f1,tickwidth = 2
#          ),
#          yaxis = list(title = "", tickfont = f1,tickwidth = 2
#          ))
# }



ui <- fluidPage(
  # mainPanel(absolutePanel(
  #   top = 10, left = 60, right = "auto",
  #   h6("Correlation between the mortalities of any pair of 34 sites of cancer in the United States")),
  absolutePanel(
    top = 40, left = 15, right = "auto",
    fixed = TRUE,
    plotlyOutput("heat",width = 700, height = 570)),
  absolutePanel(
    top = 620, left = 50,
    fixed = TRUE,
    radioButtons("Sex", label = "Sex",
                 choices = list("Male", "Female", "Both"), 
                 selected = "Both")),
  # selectInput(inputId = "Sex",
  #             label = strong("Sex"),
  #             choices = c("Male", "Female", "Both"),
  #             selected = "Both"),
  absolutePanel(
    top = 70, left = 710, right = "auto",
    fixed = FALSE,
    plotlyOutput("scatterplot"))
)

# c(names(data_female))
server <- function(input, output, session) {
  output$heat <- renderPlotly({
    if (input$Sex == "Male"){
      cancer <- data_male_ordered
      # nms <- names(data_male)
    } else if (input$Sex == "Female"){
      cancer <- data_female_ordered
      # nms <- names(data_female)
    } else if (input$Sex == "Both"){
      cancer <- data_ordered
      # nms <- names(data)
    }
    correlation <- round(cor(cancer),4)
    plot_ly(
      x = names(cancer), y = names(cancer),
      z = correlation, 
      # colors = colorRamp(c("blue","yellow")),
      key = correlation,
      type = "heatmap") %>%
      layout(title = "Correlation between the mortalities of any pair of 34 sites of cancer in the United States",
             font = f1,
             margin = m,
             xaxis = list(title = "", tickfont = f1,tickwidth = 2
             ),
             yaxis = list(title = "", tickfont = f1,tickwidth = 2
             ))
    
    # sex_selected = input$Sex
    # heat_map(sex_selected)
  })
  
  output$scatterplot <- renderPlotly({
    sex_selected = input$Sex
    if (sex_selected == "Male"){
      sex_cancer <- data_male
      nms <- names(data_male)
    } else if (sex_selected == "Female"){
      sex_cancer <- data_female
      nms <- names(data_female)
    } else if (sex_selected == "Both"){
      sex_cancer <- data
      nms <- names(data)
    }
    correlation <- round(cor(sex_cancer),3)
    s <- event_data("plotly_click")
    if (length(s)) {
      vars <- c(s[["x"]], s[["y"]])
      d <- setNames(sex_cancer[vars], c("x", "y"))
      yhat <- fitted(lm(y ~ x, data = d))
      plot_ly(d, x = ~x) %>%
        add_markers(y = ~y, marker = list(size = 8,
                                          color = 'green',
                                          line = list(color = 'white',
                                                      width = 2))) %>%
        add_lines(y = ~yhat) %>%
        layout(xaxis = list(title = s[["x"]]),
               yaxis = list(title = s[["y"]]),
               showlegend = FALSE)
    } else {
      plotly_empty()
    }
  })
}

shinyApp(ui, server)