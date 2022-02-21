install.packages("nlme")

#part 1
var = seq(from = 2, to = 35, by = 3)
matrix(var, 2)

#part 2
library(nlme)
Gasoline
str(Gasoline)
?Gasoline
attach(Gasoline)
mean(vapor)

x=(1/31)*sum((vapor-mean(vapor))^2) #variance of vapor
var(vapor)

hist(yield, ylab="count", main = "Yield vs Count")
summary(yield)

boxplot(endpoint~Sample, main="title goes here...")

plot(yield~endpoint) #plot(indep variable~dependant variable)
#ie plot(y~x)


