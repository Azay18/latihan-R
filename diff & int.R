#differentiation
rule8 <- function(x,n){
  return(n*x^(n-1))
}

#using Ryacas package
#returns the derivative formula
library(Ryacas)
x<-Sym("x")
Simplify(deriv(x^2,x))

#integration
integrand <- function(x){
  return(x^2)
}
#evaluate the integrand with the given limits
integrate(f=integrand, lower = 0, upper = 1)
#using Ryacas to find the expression
library(Ryacas)
x<-Sym("x")
Integrate(x^2,x)

# a slowly-convergent integral
integrand <- function(x) {1/((x+1)*sqrt(x))}
integrate(integrand, lower = 0, upper = Inf)

#UTS
#b
ta <- t(A) ##-- i.e.,  a[i, j] == ta[j, i] for all i,j :
for(j in seq(ncol(A)))
  if(! all(A[, j] == ta[j, ])) stop("wrong transpose")

tb <- t(B) ##-- i.e.,  a[i, j] == ta[j, i] for all i,j :
for(j in seq(ncol(B)))
  if(! all(B[, j] == tb[j, ])) stop("wrong transpose")
