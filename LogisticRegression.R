#Logistic Regression

datal<-read.csv("http://www.karlin.mff.cuni.cz/~pesta/prednasky/NMFM404/Data/binary.csv")
#View the first few rows of the data
head(datal)
summary(datal)
datal$rank = factor (datal$rank)
#GLM = logistic regression
mylogit = glm(admit ~ gre + gpa +rank, data =  datal, family = "binomial")
summary(mylogit)
newdata = data.frame(gre = 650, gpa = 4.01, rank = "2")
#Use model to predict value of 
predict(mylogit,newdata,type = "response")