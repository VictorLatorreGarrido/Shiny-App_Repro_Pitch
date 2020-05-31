library(shiny)

shinyUI(fluidPage(
    titlePanel("Iris Clustering"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("clusters", "Select number of clusters:",
                        min = 2, max = 10, value = 2)
        ),
        mainPanel(
            plotOutput("clustering")
        )
    )
))