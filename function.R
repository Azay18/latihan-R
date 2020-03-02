#1.1
f <- function(a){
  hasil <- x^3 + x^2 - 5
  return(hasil)
}
x <- (2)
f(a)

#1.2
g <- function(a, b){
  return(x*y*(y - x))
}
x <- 2
y <- 4
g(a, b)

#1.3
h <- function(m, n){
  return((sqrt(m)/n) + m - 2*n)
}
h(4,2)

#2.1
f1 <- function(m1, m2){
  return((m1 + m2)%*%m1%*%m2)
}
c <- matrix(c(1,2,3,4),2,2,TRUE)
d <- matrix(c(1,2,3,4),2,2,TRUE)
f1(c,d)

#2.2
h1 <- function(m1, m2){
  m <- matrix(c(m1),2,2,TRUE)
  n <- matrix(c(m2),2,2,TRUE)
  return(det(m1)*m2 - m1%*%m2)
}
h1(c(1,9,9,9),(1:4))

#2.3
x <- matrix(c(1:25),5,5,TRUE)
g1 <- function(x){
  hasil <- t(x) %*% x - 2*x
  return(hasil)
}
g1(x)



f <- function(x){
  #suppose c=2
  fx <- 2
  return(fx)
}

input <- 0:10
plot(input,
sapply(input, f),
type="l", xlab = "x",
ylab = "f(x)")


f(x) <- a*x + b

f <- function(x){
  #a=1 and b=2
  fx <- 1*x + 2
  return(fx)
}

input <- -1:10
plot(input,
     sapply(input, f),
     type="b",
     xlab = "x",
     ylab = "f(x)")

#type bisa dengan l, b, dan p


f(x) =a*x^2 + bx + c

f <- function(x){
  #a=1 also try a=-1, b=2, c=1
  fx <- 1*x^2 + 2*x + 1
  return(fx)
}

input <- -20:20
plot(input,
     sapply(input, f),
     type = "p",
     xlab = "x",
     ylab = "f(x)")