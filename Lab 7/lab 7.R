N <- 10000 # number of iterations 
n <- 100 # sample size 
a <- 2 # lower limit of the uniform distribution Unif(2, 6) 
b <- 6 # upper limit of the uniform distribution Unif(2, 6) 
alpha <- 0.05 # significant level 
m <- (a+b)/2 # population mean, E(X), where X ~ Unif(a,b) 
s <- sqrt(((b-a)^2)/12) # population standard deviation, sd(X)
un <- nw <- matrix(NA, nrow =N, ncol =2) # 2 blank matrices

for (i in 1:N){ # loop starts
  Sample <- runif(n, a, b) # randomly generate n samples from Unif(a,b)
  un[i,] <- c(mean(Sample) - (-1)*qt(alpha/2, df = n - 1)*sd(Sample)/sqrt(n),
              mean(Sample) + (-1)*qt(alpha/2, df = n - 1)*sd(Sample)/sqrt(n) ) 
  # calculate the i-th confidence interval using estimated sd
  nw[i,] <- c(mean(Sample) - (-1)*qnorm(alpha/2, 0, 1)*s/sqrt(n),
              mean(Sample) + (-1)*qnorm(alpha/2, 0, 1)*s/sqrt(n) ) 
  # calculate the i-th confidence interval using population sd
}
# Let's define a function in.CI(), which can automatically detect # whether m falls in a CI or not. # Here x is a vector with 2 elements, representing a CI # If m falls in x, the output is TRUE; otherwise, it returns FALSE.
in.CI <- function(x){ (x[1]<=m & m<=x[2])}
# For each row of un and nw, we apply in.CI() to evaluate the calculated CIs 
evaluate <- apply(un, MARGIN=1, FUN=in.CI) # MARGIN=1 indicates rows 
evaluate.true <- apply(nw, MARGIN=1, FUN=in.CI)

# How many times the CI contains the true mean m? 
sum(evaluate) 
sum(evaluate.true)


































