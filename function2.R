#example1
f1 <- function(x){
  result <- x^3-x^2-6
  return(result)
}

f <- function(x){
  fx <- (x^2 + 4*x - 12) / (x^2 - 2*x)
  return(fx)
}

library(Ryacas)
#define x as a symbolic variable
x <- Sym("x")

#limit of f(x) as x approaches 2
Limit(f(x), x, 2)