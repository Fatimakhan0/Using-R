#Create a dataframe to work on it
df=data.frame(x=c(1,4,4,5,6,7,10,12),
              y=c(2,2,3,3,4,5,11,11),
              z=c(8,9,9,9,10,13,15,17))
df

#Print the summary of the data
summary(df)

#Print the summary of specific columns and rows of the data
summary(df[1,c('x','z')])

#Find the Standard Deviation of the data
sapply(df,sd,na.rm=TRUE)

#Find the Quantiles
res=quantile(df$x,probs=c(0,0.25,0.5,0.75,1))
res