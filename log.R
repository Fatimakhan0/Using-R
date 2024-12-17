d=read.csv("https://raw.githubusercontent.com/Opensourcefordatascience/Data-sets/refs/heads/master/admission.csv")
head(d)
d$rank=factor(d$rank)
log=glm(admit~gre+rank+gpa,data=d,family="binomial")
df1=data.frame("gre"=380,"gpa"=3.61,"rank"="3")
predict(log,df1,type = "response")
hist(log$residuals,col="steelblue")
log$coefficients
log$residuals

null=log$null.deviance
res=log$deviance
df_diff=log$df.null-log$df.residual
p=1-pchisq(null-res,df_diff)
if(p<0.05){
  print("Good")
}
if(p>0.05){
  print("Bad")
}

