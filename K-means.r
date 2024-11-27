#K- Means
#Classification algorithm

datak = read.csv("D:/DS/iris.csv")

#Installing the relevant packages and calling their libraries

install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggfortify")
library("ggplot2")
library("dplyr")
library("ggfortify")

#Know the dataset
summary(datak)
head(datak)

#Eliminating the target variable
data <- select(datak, c(1:4))

#The elbow point technique
#The Elbow point method plots a reduction in variation vs. no of clusters (K) and the elbow point
wssplot <- function(data, nc=15, seed=1234){
  wss <- (nrow(data)-1)*sum(apply(data,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(data, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")
  wss
}
# Call the wssplot function with your data
wss_values <- wssplot(data, nc = 15, seed = 232)

#Implementing K-means K = 2
kmean <- kmeans(data, 2)
kmean$centers
#Plotting our data-points in clusters
autoplot(kmean, data, frame = TRUE)

#Kmeans with K = 3
kmean <- kmeans(data, 3)
kmean$centers
#Plotting our data-points in clusters
autoplot(kmean, data, frame = TRUE)