#Exerice 2 /Diferentiation/
#1
Simplify(deriv(sqrt(x) * (x+1)), x)

y1 <- function(x){
  return(((2*x + (x+1)) / (2*root(x, 2))))
}

y1(2)

#2
Simplify(deriv((2*x^2-3)/sqrt(x)), x)

y2 <- function(x){
  return(((8 * x^2 + (-2 * x^2 + 3)) / (2 * (root(x, 2) * x))))
}

y2(4)

#3
Simplify(deriv((x-1)/(x+1)), x)

y3 <- function(x){
  return((2/(x^2 + 2*x + 1)))
}

y3(4)


#Integration
#1
Integrate(2*x^3, x)

f1 <- function(x){
  return(2*x^3)
}
integrate(f=f1, lower = 0, upper = 3)
  
#2
Integrate(1 - (5*(x^4)), x)
f2 <- function(x){
  return(x - x^5)
}
integrate(f2, lower = 0, upper = 2)

#3
Integrate(x^4 - 3*x^2 + 5, x)
f3 <- function(x){
  return(x^5/5 - x^3 + 5*x)
}
integrate(f=f3, lower = -2, upper = 2)

#4
Integrate(x^2 + 1/2 * sqrt(x), x)
f4 <- function(x){
  return((x^3 + root(x, 2)^3/3))
}
integrate(f4, lower = 1, upper = 4)

#5
Integrate(x*(2-3*x)^2, x)
f2 <- function(x){
  return(9 * x^4/4 - 4 * x^3 + 2 * x^2)
}
integrate(f2, lower = 0, upper = 2)

#matrix
#1
A <- matrix(1:30, 10, 10, TRUE)
B <- matrix(31:60, 10, 10, TRUE)
C <- matrix(1:30, 3, 10, TRUE)
A
B
C

#2
#determinant
det(A)

#inverse
solve(A)

#eigen
a <- eigen(A)
a$val
a$vec

#3
#3.1
addition <- function(a,b){
  if(ncol(a)==ncol(b)&&nrow(a)==nrow(b)){
    return(a+b)
  }else{
    return("ERROR!")
  }
}

#3.2
multipication <- function(a,b){
  if(ncol(a)==nrow(b)){
    return(a%*%b)
  }else{
    return("ERROR!")
  }
}

#3.3
combination<-function(a,b,i,choice){
  if(ncol(a)==ncol(b)&&nrow(a)==nrow(b)){
    if(choice=="ROW"&&i>0&&i<=nrow(a)){
      row1<-a[i,]
      row2<-b[i,]
      ans<-matrix(c(row1,row2),nrow(a),nrow(b),TRUE)
      return(ans)
    } else if(choice=="COL"&&i>0&&i<=nrow(a)){
      col1<-a[,i]
      col2<-b[,i]
      ans<-matrix(c(col1,col2),ncol(a),ncol(b),TRUE)
      return(ans)
    }else{
      return("ERROR")
    }
  }else{
    return("ERROR!")
  }
}