d=read.csv("https://raw.githubusercontent.com/stedy/Machine-Learning-with-R-datasets/refs/heads/master/winequality-white.csv")
head(d)
mod1=lm(formula = quality ~ fixed.acidity + volatile.acidity + citric.acid + residual.sugar + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density + pH + sulphates + alcohol ,data = d)
modr=mod1$residuals
hist(modr)
qqnorm(modr)
qqline(modr)
install.packages("ggcorrplot")
library(ggcorrplot)
df1=subset(d,select = -quality)
co=round(cor(df1),2)
View(co)
ggcorrplot(co,hc.order=TRUE,type="lower",lab=TRUE)
mod2=lm(formula = quality ~ fixed.acidity + volatile.acidity + citric.acid + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density + pH + sulphates + alcohol ,data = d)
anova(mod1,mod2)
