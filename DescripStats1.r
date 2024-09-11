#Set the current directory from where the CSV file is going to be imported
setwd("D:/DS")

#Reading CSV file from disk
sdata=read.csv("mtcars.csv",header=TRUE,sep=",")
sdata
View(sdata)

#Print the summary of the data
summary(sdata)

#Print the structure of the data
str(sdata)

#Find the Quantiles
res=quantile(sdata$mpg,probs=c(0,0.25,0.5,0.75,1))
res