mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
head(mydata)

logit_gre <- glm(admit ~ gre, data = mydata, family = "binomial")
summary(logit_gre)

f_gre <- function(x){
  result <- 1 / (1 + exp(-(-2.901344 + 0.003582 * x)))
  return(result)
}
f_gre(700)

mydata$rank <- factor(mydata$rank)
logit_rank <- glm(admit ~ mydata$rank, data = mydata, family = "binomial")
summary(logit_rank)
f_rank <- function(rank2, rank3, rank4){
  result <- 1 / (1 + exp(-(0.1643 + rank2*-0.7500 + rank3*1.3647 + rank4*-1.6867)))
  return(result)
}
f_rank(1,0,0)

#1. compute model admit ~ gpa, and probability of being admitted when gpa = 3.5
#2. compute model admit ~ rank, and probability of being admitted then rank = 2
#3. compute model admit ~ gre + gpa + rank, and probability admitted when gre = 750 gpa = 3.5k rank = 3

logit_all <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")
summary(logit_all)
f_all <- function(gre, gpa, rank2, rank3, rank4){
  result <- 1 / (1 + exp(-(-3.9899
                           + 0.002264*gre
                           + 0.804038*gpa
                           - 0.675443*rank2
                           - 1.340204*rank3
                           - 1.551464*rank4)))
  return(result)
}
f_all(gre = 600, gpa = 3.6, rank2 = 0, rank3 = 0, rank4 = 0)
f_all(500, 3.9, 1, 0, 0)