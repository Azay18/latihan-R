#Solve = Inverse
a <- matrix(c(2, 1, -1,
              -3, -1, 2,
              -2, 1, 2),3, 3, TRUE)
b <- c(8,-11,-3)
x <- solve(a) %*% b

#NO 1
library(matlib)
A <- matrix(c(5, -4, -1, 1), 2, 2, TRUE)
B <- c(-10, 2)

showEqn(A, B)
plotEqn(A, B)
Solve(A, B)
echelon(A, B, reduced = FALSE)
echelon(A, B, reduced = TRUE)

#NO 2
A <- matrix(c(4, -2, 0, 
              5, -2, 1, 
              3, 4, -1), 3, 3, TRUE)
B <- c(2, 7, 3)

showEqn(A, B)
plotEqn3d(A, B)
Solve(A, B)
echelon(A, B, reduced = FALSE)
echelon(A, B, reduced = TRUE)

#NO 3
A <- matrix(c(1,1,1,
              2,3,5,
              4,0,5),3,3,TRUE)
B <- c(5,8,2)

showEqn(A,B)
plotEqn3d(A,B)
Solve(A,B)
echelon(A,B, reduced = FALSE)
echelon(A,B, reduced = TRUE)