shinyUI(pageWithSidebar(
  headerPanel("Simulating the Central Limit Theorem (Statistical Inference Module)"),
  sidebarPanel(
        selectInput("population_size", 
                    label = "There is no need for further documentation just: (1) Vary the population size, ",
                    choices = c("1000","1500"),
                    selected = "1000"),
                    
        sliderInput('sample_size', 'and/or  (2) Vary the sample size',value = 10, min = 10, max = 100, step = 30,)
          ),
  mainPanel(
    plotOutput('CLT_test')

  )
))