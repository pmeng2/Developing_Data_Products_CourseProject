

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
        titlePanel("Safe Distance"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("Speed",
                        "Maximum speed:",
                        min = 4,
                        max = 25,
                        value = 10)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
