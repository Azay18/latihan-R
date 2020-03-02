library(ISLR)
attach(Smarket)
#Split data into testing and training
train <- Smarket[Year < 2005, ]
test <- Smarket[Year == 2005, ]
#MODEL = Direction ~ Lag1 + Lag2 + Lag3
model <- glm(formula = Direction ~ Lag1 + Lag2 + Lag3, data = train, family="binomial")

test.probs <- predict(model, test, type='response')      #Hitung probabilitas diterima
pred.logit <- rep("Up", 252) # Ganti 252 jadi length(test.probs)
pred.logit[test.probs>=0.5] <- "Up"         # Ubah nilai 1 pada data dengan nillai probabilitas lebih dari atau sama dengan 0,5

