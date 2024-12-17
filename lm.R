d=read.csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")
head(d)
df=subset(d,select = c(mpg,cyl,disp,hp,drat,wt))
head(df)
pairs(df)
mod=lm(mpg~disp+drat+hp,data=df)
hist(mod$residuals)
summary(mod)
new=data.frame(disp=350,drat=3.94,hp=100)
predict(mod,new,type="response")

res=mod$residuals
mse=mean(res^2)
rmse=sqrt(mse)
mse
rmse
