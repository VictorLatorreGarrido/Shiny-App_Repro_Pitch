library(shiny)

shinyServer
(function(input, output) {
    
    output$clustering <- renderPlot({

        iris.new<- iris[,c(1,2,3,4)]
        iris.class<- iris[,"Species"]
        
        normalize <- function(x){
            return ((x-min(x))/(max(x)-min(x)))
        }
        
        iris.new$Sepal.Length<- normalize(iris.new$Sepal.Length)
        iris.new$Sepal.Width<- normalize(iris.new$Sepal.Width)
        iris.new$Petal.Length<- normalize(iris.new$Petal.Length)
        iris.new$Petal.Width<- normalize(iris.new$Petal.Width)
        
        result <- kmeans(iris.new, input$clusters)
        
        par(mfrow=c(2,2), mar=c(5,4,2,2))
        plot(iris.new[c(1,2)], col=result$cluster)
        plot(iris.new[c(1,2)], col=result$cluster)
        plot(iris.new[c(3,4)], col=result$cluster)
        plot(iris.new[c(3,4)], col=result$cluster)

    })

})