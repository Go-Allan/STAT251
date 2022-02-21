#question 1
pexp(1, 2)
pexp(2,2)-pexp(1,2)
1-pexp(2,2)

#question 2
qexp(0.25, 2)
qexp(0.5,2)
qexp(0.75,2)

x = rexp(n=10000, rate = 2)
hist(x, prob = T,xlab = "time between questions", main = "probability of time between question")
curve(dexp(x,rate= 2), add=T)



