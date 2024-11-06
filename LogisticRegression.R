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

data2=read.csv("D:/DS/mtcars.csv")
View(data2)
data2<-mtcars[ ,c("mpg","disp","hp","drat")]
head(data2)
pairs(data2,pch=0,col="black")
model<-lm(mpg~disp+hp+drat,data=data2)
#The distribution of model residuals should be approximately normal
hist(residuals(model),col="steelblue")
summary(model)
newdata = data.frame(disp = 350, hp = 100, drat = 3.94)
#Use model to predict value 
predict(model,newdata,type = "response")
#To view the coefficients and understand which attribute plays an important role
model$coefficients
