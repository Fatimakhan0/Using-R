#Data Distribution using Box plots
data("iris")
#Create separate boxplots for each attribute
par(mfrow=c(1,4))
for(i in 1:4){
  boxplot(iris[,i], main=names(iris)[i])
}
View(iris)

#Data Distribution using Scatter plots
install.packages("ggplot2")
library("ggplot2")
ggplot(iris,aes(Sepal.Length,Sepal.Width))+geom_point()
)