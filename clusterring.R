library("datasets") 
data("iris") 
summary(iris) 

#as we don't need the class labels 
iris.new <- iris [,c(1,2,3,4)] 
iris.class <- iris [, "Species"] 

result <- kmeans(iris.new, 3) 

par(mfow=c(2,2), mar=c(5,4,2,2)) 
plot(iris.new[,c(1,2)], col=result$cluster) 
plot(iris.new[,c(1,2)], col=iris.class) 
plot(iris.new[,c(3,4)], col=result$cluster) 
plot(iris.new[,c(3,4)], col=iris.class)

table(result$cluster,iris.class)

install.packages('rattle')
data(wine, package='rattle')
