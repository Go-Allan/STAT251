#maximum
Xa = rexp(n=10000, rate = 1/50)
Xb = rexp(n=10000, rate = 1/50)
Xc = rexp(n=10000, rate = 1/50)

X = cbind(Xa, Xb, Xc)
head(X)

Y1 = apply(X, 1, max) # 1 parameter means by 1 row
hist(Y1, prob = T, breaks = 40) # break 40 means amount of bins is around 40


f1 = function(y){(((3/50)*exp(-y/50)))*((1-exp(-y/50))^2)}

curve(f1, add= T)

#minimum
Xa = rexp(n=10000, rate = 1/50)
Xb = rexp(n=10000, rate = 1/50)
Xc = rexp(n=10000, rate = 1/50)

X = cbind(Xa, Xb, Xc)
head(X)

Y1 = apply(X, 1, min) # 1 parameter means by 1 row
hist(Y1, prob = T, breaks = 40) # break 40 means amount of bins is around 40


f1 = function(y){(((3/50)*exp(-3*y/50)))}

curve(f1, add= T)