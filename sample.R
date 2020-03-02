#Sample
sample(1:25, 9, replace = TRUE)

#5 x 5 matrix A
values <- sample(c(0, 1, 0, 8, 1, 9, 9, 9),
                 25, replace = TRUE)
A <- matrix(c(values), 5, 5, TRUE)

#5 x 3 matrix B
values2 <- sample(c(0, 1, 0, 8, 1, 9, 9, 9),
                 15, replace = TRUE)
B <- matrix(c(values2), 5, 3, TRUE)

#3 x 4 matrix C
values3 <- sample(c(0, 1, 0, 8, 1, 9, 9, 9),
                  12, replace = TRUE)
C <- matrix(c(values3), 3, 4, TRUE)

#cara lain
ddmmyyyy <- c(0, 1, 0, 8, 1, 9, 9, 9)
values4 <- sample(ddmmyyyy, 25, replace = TRUE)
D <- matrix(values4, 5, 5)

#supaya sample sama pake set.seed
set.seed(1)
sample(1:10, 2)

#latihan loop
a <- matrix(c(2, 3,
              1, 2), 2, 2, TRUE)
for (i in 1:nrow(a)) {
  for (j in 1:ncol(a)) {
    a[i, j] <- 5 + a[i, j]
  }
}

#soal 2: b[i,j] < 2
for (i in 1:nrow(b)) {
  for (j in 1:ncol(b)) {
    if(b[i,j] < 2){
      b[i,j] < b[i,j] - 1
    }
  }
}

#soal 3
for (i in 1:nrow(a)) {
  for (j in 1:ncol(a)) {
    if(a[i,j]^2 > 10){
      a[i,j]/a[i,j] + 1
    }
  }
}