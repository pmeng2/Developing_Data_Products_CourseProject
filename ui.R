

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
        titlePanel("Safe Distance"),
        # Application document
        mainPanel(h3("Instruction"),
                  h4("The cars dataset was used to make the scatter plot, as shown below.
                     Linear regression (red line) was used to fit the data to predict the safe stopping
                     distance at different speeds. "),
                  h4("Move the slider and set the speed. The safe distance predicted from the linear regression
                  model will be shown using a green line. The safe distance from real data is shown using
                  the blue line. If the input data is not included in the cars dataset, the blue line will not be shown")),

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
