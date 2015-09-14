library(shiny)
library(rgl)
library(shinyRGL)

shinyUI(fluidPage(
  titlePanel("Gradientes de selección correlacional"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("g12", label = "gamma 12", min= -0.9, max=1, value = 0, step = 0.1),
      sliderInput("g13", label = "gamma 13", min= -0.9, max=1, value = 0, step = 0.1), 
      sliderInput("g23", label = "gamma 23", min= -0.9, max=1, value = 0, step = 0.1), 
      width=3),
    
    mainPanel(
      webGLOutput("pob1"), width=7)
  )
)
)