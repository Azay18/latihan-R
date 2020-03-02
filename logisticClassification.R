library(ISLR)
attach(Smarket)
#split data into testing and training
train <- Smarket[Year < 2005, ]
test <- Smarket[Year == 2005, ]
#Model = direction ~ Lag1 + Lag2 + Lag3

model <- glm(formula = Direction ~ Lag1 + Lag2 + Lag3, data = train, family = "binomial")
pred <- predict(model, test, type ="response")
pred.logit <- rep("Down", 252)
pred.logit[pred >= 0.5] <- "Up"

confusionMatrix(test$Direction, factor(pred.logit))
#fungsi ROC hanya mau menerima numeric atau ordinal
#fungsi as.numeric() menjadikan factor ke numeric
plot(roc(as.numeric(test$Direction), as.numeric(factor(pred.logit))))
