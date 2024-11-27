#KNN
#Classification algorithm

datam = read.csv("D:/7086/PimaIndians.csv")

#To clear all variables
rm(list=ls())

#Setting working directory to 'D' drive where data is present
setwd("D:/")

#Loading package 'class' for KNN
library('class')
#Loading package 'caret' for confusion matrix for validation
install.packages('caret')
library('caret')

#Know the dataset
View(datam)
head(datam)
#class() to know the datatype of the feature mass
class(datam$BMI)
#To know the Structure of data
str(datam)
#Convert class to factor
datam[,'Outcome']=factor(datam[,'Outcome'])
#Check the changes made to 'class' feature
str(datam)

#Finding the mean age of patients
mean(datam$Age)
#Giving info about mean,median and other descriptive values
summary(datam)
#building training data to train knn
train=datam[1:500,]
#building testing data to test knn
test=datam[501:768,]
#After training on the data
pred_test=knn(train[,-9],test[,-9],train$Outcome,k=2)
pred_test
#table(gives us the correct and incorrect tests
confusion=table(pred_test,test$Outcome)
#Accuracy of model
sum(diag(confusion))/nrow(test)
confusionMatrix(pred_test,test$Outcome)
