#randomly draw 500 samples from a uniform distribution
y=runif(500,5,15)
hist(y)
curve(dunif(x,5,15),5,15, add=TRUE)

#1000 samples of 50
n=50
N=1000
X = matrix(data = runif(N*n), nrow = N, n )
xbar = apply(X, MARGIN = 1, FUN = mean)
hist(xbar, prob = TRUE, breaks = 20)

#1000 samples of 500
m=500
M=1000
X = matrix(data = runif(M*m), nrow = M, m )
xbar2 = apply(X, MARGIN = 1, FUN = mean)
hist(xbar2, prob = TRUE, breaks = 20)

#plot the two samples versus each other
plot(density(xbar),ylim=c(0,35))
lines(density(xbar2), col ="gold")
