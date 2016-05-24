# title: 'Developing Data Products Final Assignment'
# author: "Prakash Khadka"
# date: "25/05/2016"
# description: Visualizing a macroeconomic data set observed yearly for economic regression 


library(shiny)
library(ggplot2)
library(rCharts)
options(
  rcharts.mode = 'iframesrc', 
  rcharts.cdn = TRUE,
  RCHART_WIDTH = 600,
  RCHART_HEIGHT = 400
)
library(data.table)
library(reshape2)
library(dplyr)
library(markdown)


# Load specification R functions
source("functions.R")


data <- longley
shinyServer(function(input, output) {
	gnpData <- reactive({
		paste("Employed ~", "as.integer(", input$x,")")
	})
	
	
	
	#draw a liner model with the reactive funtion
	economicRegressionGraph <- reactive({
		lm(as.formula(gnpData()),data=data)
	})
	output$longleyds <- renderDataTable({
	  data
	}, options = list(bSortClasses = TRUE))
	# Scatter Chart - employed vs. given input
	output$employedByUnemmployed <- renderChart({
	  scattChart(data, dom="employedByUnemmployed")
	})
	
	
	output$text <- renderText({
	  paste("Economic Regression Data Model:", "Employed ~", input$x)
	})
	
	output$myPlot <- renderPlot ({
	  with(data, {plot(as.formula(gnpData()),xlab=input$x,ylab="Employed")
	    abline(economicRegressionGraph())
	  })
	})
})     
		
				  	  			  