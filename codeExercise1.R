#1
Q <- c(-100:100)
#2
P <- Q[Q %% 2 != 0]
#3
S <- c(1,1,1,0,2,0,1,8)
R <- setdiff(Q, S)
#4
union(P, R)
#5
setdiff(Q, union(P,R))
#6
intersect(setdiff(Q,P), setdiff(Q,R))

#1
f <-function(x,y){
  fu <- sqrt(x)+y^2
  return(fu)
}
#2
g <- function(a,b){
  fu <- a*b*((a^2)+(b/3))
  return(fu)
}
#3
h <- function(x,y){
  fu <- sqrt(f(x,y)+ 3 + g(x,y))
  return(fu)
}
a <- f(25,2)
a










#4
f1 <- function(x){
  total <- x^3 + x +1
  return(total)
}
f2 <- function(x){
  total <- sqrt(x)-1
  return(total)
}

f1f2 <- function(x){
  fx <- f1(f2(x))
  return(fx)
}

f1f2(5)


#5
f1 <- function(x){
  total <- 1/x
  return(total)
}
f2 <- function(x){
  total <- 2/x
  return(total)
}
f3 <- function(x){
  total <- 3/x
  return(total)
}
f4 <- function(x){
  total <- 4/x
  return(total)
}
f5 <- function(x){
  total <- 5/x
  return(total)
}


input <- -20:20
plot(input , sapply(input, f1),type = "l",xlab = "x",ylab = "f(x)")
lines(input, sapply(input, f2),type = "l",col=2)
lines(input, sapply(input, f3),type = "l",col=3)
lines(input, sapply(input, f4),type = "l",col=4)
lines(input, sapply(input, f5),type = "l",col=5)

#1
f <- function(theta){
  ftheta <- (1-cos(theta)) / theta
  return(ftheta)
}
library(Ryacas)
theta <- Sym("theta")
Limit(f(theta), theta,0)


#2
f <- function(h){
  fh <- (2*((-3+h)^2)-18)/h
  return(fh)
}
#library(Ryacas)
h<-Sym("h")
Limit(f(h),h,0)

#3
f <- function(t){
  ft <- (t - (sqrt((3*t)+4))) / (4-t)
  return(ft)
}
library(Ryacas)
t<-Sym("t")
Limit(f(t),t,4)





