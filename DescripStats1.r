setwd("D:/DS")
sdata=read.csv("mtcars.csv",header=TRUE,sep=",")
sdata
View(sdata)
summary(sdata)
str(sdata)
res=quantile(sdata$mpg,probs=c(0,0.25,0.5,0.75,1))
res