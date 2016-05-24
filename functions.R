# title: 'Developing Data Products Final Assignment'
# author: "Prakash Khadka"
# date: "25/05/2016"
# description: Visualizing a macroeconomic data set observed yearly for economic regression 


#' Develop Scatter Chart
#'
#' @param ds the source data set
#' @param dom the DOM source event
#' @return the chart
scattChart<-function(ds, dom) {
  myChart<-nPlot(Employed~Unemployed, group ='Employed',data=ds
                   , dom=dom, type = "multiBarChart")
  #Display customized tool tip 
  myChart$chart(tooltipContent = "#! function(key, x, y, e){
                  return '<h2>' + e.point.Employed + '</h2>'} !#")
  myChart$xAxis(axisLabel='No of Unemployed people')
  myChart$yAxis(axisLabel='No of employed people')
  myChart
  }

