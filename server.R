library(UsingR)
library(stats)

    # pop_no    <- 1000
    # sample_size <- 20

# Simulation of the mean of a variable number of observations - starting with 10

# Taking the random exponential distribution in R $rexp[sample_size)$ and a total of $n = population_size$ 
# repetitions of #the sample averages, we create a distribution of means and calculate their mean and standard deviation, as follows:

shinyServer(

  function(input, output) {
    output$CLT_test <- renderPlot({
        
        pop_no <- as.numeric(input$population_size)
        sample_size <- as.numeric(input$sample_size)
        mns  <- NULL
        
            for (i in 1 : pop_no) 
                {mns = c(mns, mean(rexp(sample_size,0.2)))}
            means <- rbind(means, mns)
           
            mean_sampno <- round(mean(mns),4)
            var_sampno  <- var(mns)
            std_sampno  <- round(sqrt(var_sampno*sample_size),4)

    # 
            x   <- seq(0,10, length = pop_no)  
            y   <- dnorm(x,mean=5, sd=5/sqrt(sample_size)) 
            plot(x,y, ann=F, axes=F, type="l", lwd=2, col="blue")
            abline(v=5.0, col="red",lwd=2)
            par(new=TRUE)
            hist(mns, xlim=c(0,10), xlab="means",
                main=paste("Sample mean of ", sample_size, "obs, n=",pop_no," compared with dnorm values 
                            \n Simulated mean =", mean_sampno," and standard deviation =",std_sampno))
            legend("topright",legend=c("Normal distribution", "Mean"),col=c("blue","red"),lty=c(1),cex=1, bty="n")
            
        }
    )
  }
)
 