xi <- c(0, 0.25, 0.50, 0.75, 1)
yi <- c(1, 1.2840, 1.6487, 2.1170, 2.7183)

sum(xi) #penjumlahan xi
sum(yi) #penjumlahan yi

sum_xi0 <- sum(xi^0)
sum_xi1 <- sum(xi^1)
sum_xi2 <- sum(xi^2)
sum_xi3 <- sum(xi^3)
sum_xi4 <- sum(xi^4)

sum_yixi0 <- sum(yi * xi^0)
sum_yixi1 <- sum(yi * xi^1)
sum_yixi2 <- sum(yi * xi^2)

a <- matrix(c(5, 2.5, 1.875,
              2.5, 1.875, 1.5625,
              1.875, 1.5625, 1.382812), 3, 3, TRUE)
b <- matrix(c(8.768, 5.4514, 4.401537), 3, 1, TRUE)

solve(a)%*%b