a <- b <- 5

if(a<b){
     print("a is smaller than b")
  }else if(a>b){
     print("a is greater than b")
  }else{
     print("a and b are likely the same")
  }

a <- matrix(1:9,3,3,TRUE)
if (nrow(a) == ncol(a)){
  print("a is a square matrix")
} else {
  print("a is not")
}

b <- matrix(2:10,3,3,TRUE)
if (nrow(b) == ncol(b)) {
  b %*% t(b)
} else if (nrow(b)<ncol(b)) {
  b+b*5
} else {
  b-b*6
}

c <- matrix(1:9, 3, 3, TRUE)
for (i in 1:nrow(c)){
  c[i, 1] <- c[i, 1] + 2
}

d <- matrix(1:9,3,3,TRUE)
for(i in 1:ncol(d)){
  for(j in 1:ncol(b)){
    b[i, j] <- 5 * b[i, j]
  }
}

e <- matrix(1:9,3,3,TRUE)
if(nrow(e) == ncol(e)){
  for(j in 1:ncol(e)){
    print(e[1, j])
  }
} else if (nrow(e) < ncol(e)){
  for (i in 1:nrow(e)) {
    for (j in 1:nrow(e)) {
      e[i,j] <- e[i,j]*5
    }
  }
  e
} else {
  for (i in 1:nrow(e)) {
    for (j in 1:ncol(e)) {
      e[i,j] <- e[i,j]-e[i,j]*6
    }
  }
  e
}

#Solving a linear system in R
A <- matrix(c(2,1,-1,
              -3,-1,2,
              -2,1,2),3,3,TRUE)
b <- c(8,-11,-3)
x <- solve(A) %*% b

A <- matrix(c(1,2,1,
              1,3,2,
              2,1,2),3,3,TRUE)
b <- c(6,9,12)
x <- solve(A) %*% b