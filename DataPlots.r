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
#aes = aesthetic i.e. among which variables is the plotting being done
ggplot(iris,aes(Sepal.Length,Sepal.Width))+geom_point()

data(iris)
pairs(iris)
set.seed(1)


#Data Distribution using Histogram
#make this example reproducible
set.seed(1)
x1=rnorm(1000,mean=0.8,sd=0.2)
x2=rnorm(1000,mean=0.4,sd=0.1)
hist(x1,col='red', xlim=c(0,1.5),main="Multiple Histograms", xlab='x')
hist(x2,col='green',add=TRUE)
legend('topright',c('x1 variable','x2 variable'), fill= c('red', 'green'))

#Data Distribution using Bar Graphs
ggplot(mtcars,aes(x=cyl))+geom_bar()

#Data Distribution using Pie Charts
count= c(7, 25, 16, 12, 10, 30)
pie(count, labels=count)
pie(count, labels=paste0(count,"%"))
