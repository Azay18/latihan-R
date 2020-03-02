mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")  #Baca file ekstensi csv (?)
head(mydata) #Ambil 6 data pertama
tail(mydata) #Ambil 6 data terakhir

logit_gre <- glm(admit ~ gre, data = mydata, family="binomial")
summary(logit_gre)  #Liat isi variabel logit_gre

#Fungsi buat ngitung kemungkinan (?)
f_gre <- function(x) {
  result <- 1 / (1 + exp(-(-2.901344 + 0.003582 * x)))
  return(result)
}

#Latihan
#1. Compute model admit ~ gpa, and probability of being admitted when gpa = 3.5
#2. Compute model admit ~ rank, and probability of being admitted when rank = 2, pake mydata$rank <- factor(mydata$rank)
#3. Compute model admit ~ gre + gpa + rank, and probability of being admitted when gre = 750, gpa = 3.5 and rank = 3

#1
#Model admit ~ gpa 
logit_gpa <- glm(admit ~ gpa, data = mydata, family="binomial")
summary(logit_gpa)  #Liat isi variabel logit_rank

#Fungsi hitung probabilitas diterima(pake gpa)
f_gpa <- function(x) {
  result <- 1 / (1 + exp(-(-4.3576 +  1.0511 * x)))
  return(result)
}

#Hitung probabilitas diterima dengan gpa = 3.5
f_gpa(3.5)
#Jadi probabilitas diterimanya adalah 0.3365403


#2
#Model admit ~ rank
mydata$rank <- factor(mydata$rank)  #Ubah data jadi ordinal
logit_rank <- glm(admit ~ mydata$rank, data = mydata, family="binomial")
summary(logit_rank)  #Liat isi variabel logit_rank

#Fungsi hitung probabilitas diterima(pake rank)
f_rank <- function(rank2,rank3,rank4) {
  result <- 1 / (1 + exp(-(0.1643  +  rank2*-0.7500 + rank3*-1.3647  + rank4*-1.6867)))
  return(result)
}

#Hitung probabilitas diterima dengan rank = 2
f_rank(1,0,0) #Liat parameter fungsi f_rank
#Jadi probabilitas diterimanya adalah 0.3365403

#3
#Model admit ~ gre + gpa + rank
mydata$rank <- factor(mydata$rank)  #Ubah data jadi ordinal
logit_all <- glm(admit ~ gre + gpa + mydata$rank, data = mydata, family="binomial")
summary(logit_all)  #Liat isi variabel logit_rank

#Fungsi hitung probabilitas diterima(pake rank)
f_all <- function(gre,gpa,rank2,rank3,rank4) {
  result <- 1 / (1 + exp(-(-3.989979  +  gre*0.002264 + gpa*0.804038 + rank2*-0.675443 + rank3*-1.340204 + rank4*-1.551464)))
  return(result)
}

#Hitung probabilitas diterima dengan gre = 750, gpa = 3.5 and rank = 3
f_all(750,3.5,0,1,0)
#Jadi probabilitas diterimanya adalah 0.3365403

##################
trainSet <- mydata[1:280, ]     #Ambil data variabel mydata dengan indeks 1-280 terus masukkan ke variabel trainSet
testSet <- mydata[281:400, ]    #Ambil data variabel mydata dengan indeks 281-400 terus masukkan ke variabel testSet

model <- glm(admit ~ gre + gpa + rank, data = trainSet, family="binomial")    #Buat model

test.probs <- predict(model, testSet, type='response')      #Hitung probabilitas diterima
pred.logit <- rep(0,length(test.probs))
pred.logit[test.probs>=0.5] <- 1        # Ubah nilai 1 pada data dengan nillai probabilitas lebih dari atau sama dengan 0,5

library(caret)
confusionMatrix(factor(testSet$admit), factor(pred.logit))

#Plotting
library(pROC)
plot(roc(testSet$admit, pred.logit))
