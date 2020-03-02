mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
# view the first few rows of the data
head(mydata)

#check summary of the data set
summary(mydata)
mydata$rank <- factor(mydata$rank)

#compute the model
logit_gre <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")
summary(logit_gre)

p_gre <- function(gre, gpa, rank2, rank3, rank4){
  result <- 1 / (1 + exp(-(-3.989969 + 0.002264 * gre + 0.804038 * gpa - 0.675443 *
                         rank2 - 1.340204 * rank3 - 1.340204 * rank4)))
  return(result)
}

###
trainSet <- mydata[1:280, ]
testSet <- mydata[281:400, ]

model <- glm(admit ~ gre + gpa + rank, data = trainSet, family = "binomial")

test.probs <- predict(model, testSet, type = 'response')
pred.logit <- rep(0, length(test.probs))
pred.logit[test.probs >= 0.5] <- 1

library("caret")
confusionMatrix(factor(testSet$admit), factor(pred.logit))

library("pROC")
plot(roc(testSet$admit, pred.logit))