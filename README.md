# DataProducts - Module 9 of the Coursera Data Science Specialisation of John Hopkins University

Shiny project - Demonstrating the Central Limit Theorem (CLT). (See Statistical Inference Module)

CLT SIMULATION EXPERIMENTS:
Example: exponential distribution, given by the function f(x) = lamda.exp(-x/lamda), with lamda = 0.2, 
         where mean and standard deviation are 1/lamda = 5.

Variables: n, s, the population and sample sizes

R-functions:                       
    Standard normal distribution: dnorm for s, mean=5, sd=5
    Test functions              : rexp 

Running Shiny (runApp()) on the file pair, server.R and ui.R, produces an interactive graph to
show how the standard normal distribution can be simulated for different population and sample values.

Entering sizes:
                population size as user keyboard input - choice between 1000 and 1500
                sample size using sliding values between 10 and 100, with increments of 30.

 NOTE:
        Due to the severe monthly time restriction of ShinyApps.io, the full flexibility of the application
        is very limited, and that is the reason for only two sizes of the population and the large increment
        in sample size number.