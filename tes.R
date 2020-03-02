a <- matrix(data=c(1,2,3,4),
            nrow = 2, ncol = 2, byrow = TRUE)

b <- matrix(c(1,2,3,4),
            2, 2, TRUE)
b[1, 2]
b[1, ]
b[1:2, ]
b[ ,1:2]
diag(b)
b[-1,]
b[,-2]

d <- matrix(c(1,2,3,4),2,2,TRUE)
colnames(d) <- c("satu", "dua", "tiga")
rownames(d) <- c("satu", "dua", "tiga")
d["satu", "dua"]