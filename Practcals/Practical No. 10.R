library(ggplot2)
library(dplyr)
install.packages("factoextra")
library(factoextra)

data("iris")
head(iris)
iris_data <- iris[,1:4]

#elbow method
fviz_nbclust(iris_data,kmeans,method = "wss")+ labs(title = "Elbow Method for Optimal K")

#APPLY K MEANS Clsutering with k=3
set.seed(123)
kmeans_model <- kmeans(iris_data, centers = 3,nstart = 20)

#cluster assignments
kmeans_model$cluster[1:10]
table(kmeans_model$cluster,iris$Species)

#Visualize Clusters
fviz_cluster(kmeans_model,data = iris_data,ellipse.type = "norm", palette = "jco",ggtheme = theme_minimal())

