A <- c(1,3,5,7,9)
B <- D <- c(1,5,7)

#intersection
intersect(A, B)

#union
union(A,B)

#A\B, that is, A'
setdiff(A,B)

#wether A = B?
setequal(A,B)
setequal(A,D)

#subset
is.element(B,A)
is.element(A,B)
all(is.element(B,A))

U <- 1:12
A <- U[sfsmisc::primes(U)]
B <- U[U %% 2 == 0]
#B <- U[which(U %% 2 == 0)]
C <- U[U %% 3 == 0]



#pengantar
jmlMat <- function(m1, m2){
  hasil <- m1 + m2
  return(hasil)
}

a <- matrix(1,3,3)
b <- matrix(2,3,3)
d <- jmlMat(a,b)

gabHim <- function(set1, set2){
  gab <- union(set1, set2)
  return(gab)
}