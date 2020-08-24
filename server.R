

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- cars[, 2]
       Speed <- input$Speed 

        # draw the histogram with the specified number of bins
        plot(x= cars$speed, y = cars$dist, col = 'darkgray', xlab = "Speed",
             ylab = "Safe Distance")
        lmfit <- lm(cars$dist~cars$speed)
        abline(lmfit, lwd = 2, col = "red")
        abline(v = Speed, lwd = 2, col = "grey")
        safedist1 <- max(as.vector(cars[cars$speed == Speed, ]$dist))
        abline(h = safedist1, lwd = 2, col = "blue")
        text(10, safedist1+4, cex = 1, "Safe Distance_data", col = "blue")
        safedist2 <- lmfit$coefficients[[1]]+Speed*lmfit$coefficients[[2]]
        abline(h = safedist2, lwd = 2, col = "green")
        text(5, safedist2+4,cex = 1, "Safe Distance_lm", col = "green")
    })

})
