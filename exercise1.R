#1
Q <- (-100 : 100)
#2
P <- Q[Q %% 2 !==0]
#3
S <- c(1,1,1,0,2,0,1,8)
R <- setdiff(Q,S)
#4
union(P,R)
#5
setdiff(Q,union(P,R))
#6
intersect(setdiff(Q,P)),(setdiff(Q,R))

#1
f <- function(x,y){
  fx <- sqrt(x)+y^2
  return(fx)
} 
#2
g <- function(a,b){
  ga <- a*b*((a^2) * (b/3))
  return(ga)
}
#3
h <- function(x,y){
  hx <- sqrt(f(x,y)+3+g(x,y))
  return(hx)
}
#4
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

