#Set the current directory from where the CSV file is going to be imported
setwd("D:/DS")

#Reading CSV file from disk
mdata=read.csv("iris.csv",header=TRUE,sep=",")
mdata
View(mdata)

#Print the summary of the data
Summary=summary(mdata)
print("Summary")

#Print the structure of the data
Struc=str(mdata)
print(Struc)

#Find the Quantiles
res=quantile(mdata$sepal.length,probs=c(0,0.25,0.5,0.75,1))
print(res)

#Create subsets according to conditions
S1=subset(mdata,petal.length>1.7)
S2=subset(mdata,variety=="Setosa" & petal.length>1.7)
print("Flowers having petal length greater than 1.7: ")
print(S1)
print("Flowers having petal length greater than 1.7 and are Setosa: ")
print(S2)

#Find mean points by team
aggr=aggregate(mdata$petal.length,by=list(mdata$variety),FUN=mean)
print(aggr)
