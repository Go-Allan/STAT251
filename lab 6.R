#question 1
n = 10
N = 10000

mu = 15
sigma = 2

#empty matrix
samples <- matrix(NA, nrow = N, ncol = n+3)

for (i in 1:N){
  samples[i,1:n] <- rnorm(n, mean=mu, sd=sigma)
  deviation <- samples[i,1:n] - mean(samples[i,1:n])
  samples[i,n+1] = (1/n)*sum((deviation)^2)     #corresponding to (s0)^2
  samples[i,n+2] = (1/(n-1))*sum((deviation)^2) #corresponding to (s1)^2
  samples[i,n+3] = (1/(n-2))*sum((deviation)^2) #corresponding to (s2)^2
}

#question 2
boxplot(samples[,n+1],samples[,n+2],samples[,n+3], xlab = "Estimator", ylab = "Sample Variance")
abline(h=4, col = "green")

#question 3
summary(samples[,n+1])
summary(samples[,n+2])
summary(samples[,n+3])

sd(samples[,n+1])
sd(samples[,n+2])
sd(samples[,n+3])

hist(samples[,n+3])
