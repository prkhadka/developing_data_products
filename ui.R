# title: 'Developing Data Products Final Assignment'
# author: "Prakash Khadka"
# date: "25/05/2016"
# description: Visualizing a macroeconomic data set observed yearly for economic regression  


# Loading required libraries
library(shiny)
library(datasets)
require(graphics)
library(rCharts)

longleydata <- longley
shinyUI(fluidPage(
  navbarPage("Coursera Developing Data Products Final Assignment By Prakash Khadka"
  ),
  titlePanel("Exploring with Economic Regression Data set"),
  sidebarLayout(
    sidebarPanel(
      
      h3('Tweek the Plot, Select A predictor'),
      selectInput('x', label='Predictor', selected='GNP', choices=names(longley)),
      p('In the right side of the page we can see how the economic regression data fits against different economic varibales by Selecting any of the predictor variable to view its standing against employed people:')
      ,h3('About the App'),
      p("This project uses the 'longley' dataset to plot the",
        "regression model of employed no of people vs the selector selected from the left side bar."),
      
      p("Change of predictor updates the graph plot"),
      p('This is a very basic App intended to provide some introductory (really, really basic) exploratory analysis.'),
      p("Please do wait for few seconds as it take time for the shiny to reflect output changes after you select your desired selector from the dropdown"),
      p("The objective of this app is to plot a model for the different selectors."),
      p("Below is the link to my github repository that contains the source code for the shiny app"),
      a("https://github.com/prkhadka/developing_data_products"),
      
      tags$br(),
      strong('About the plot'),
      p('The plot has already some variables choosen by default, to help you interprete the data.'),
      p('From the default settings, the plot is intended to allow the comparison among some variables:'),
      tags$ul(
        tags$li('Compare the population of employed vs unemployed')
      )
      ),#end of sidebbarpanel
    
    mainPanel(
     
      
      p(icon("bar-chart-o"), "Graphs"),
      h4(textOutput('text'), align = "center"),
      plotOutput('myPlot'),
    tags$br()
    ,h4('Employed vs  unemployed', align = "center"),
      showOutput("employedByUnemmployed", "nvd3"),
      
      h4('Actual Data set '),
      tags$br(),
      p('You can play around with the data . Try it.'),
      tags$br(),
      tabPanel('longleydata', dataTableOutput('longleyds')),
       p(includeMarkdown("include.md"))
      )#end of mainpanel
    
  )#end of sidebarlayout
)#end of fluidpage
)#end of shinyUI