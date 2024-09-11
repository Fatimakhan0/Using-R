setwd("D:/DS")
mdata=read.csv("iris.csv",header=TRUE,sep=",")
mdata
View(mdata)
summary(mdata)
str(mdata)
res=quantile(mdata$sepal.length,probs=c(0,0.25,0.5,0.75,1))
res
