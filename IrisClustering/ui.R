library(shiny)

shinyUI(fluidPage(
    titlePanel("Iris Clustering with Kmeans"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("clusters", "Select number of clusters:",
                        min = 2, max = 10, value = 2)
        ),
        mainPanel(
            titlePanel("Iris Clustering Representation"),
            plotOutput("clustering")
        )
    )
))