library(dplyr)
library(factoextra)


3#Performing the kmeans clutsrting algorithm
data("iris")
iris_data <- iris[,-5]

set.seed(123)
k4<- kmeans(iris_data,centers = 4,nstart = 25)

table(k4$cluster, iris$Species)

#apply clustering on mtcars 

data("mtcars")

mtcars_data <- mtcars[,c("mpg", "hp","wt")]
mtcars_scaled <- scale(mtcars_data)
set.seed(123)
k3_mtcars <- kmeans(mtcars_scaled, centers =3, nstart =25) 

mtcars$cluster <- k3_mtcars$cluster
aggregate(mtcars_data, by= list(cluster = mtcars$cluster),mean)


#use elbow method to find the optimal  number of clusters
fviz_nbclust(iris_data, kmeans, method = "wss")


#visualize clusters using PCA based scatterplot in
fviz_cluster(km_iris, data = iris_data, geom = "point", 
             ellipse.type = "convex", 
             main = "PCA-based Cluster Visualization of Iris Data")

# Create a subset of iris with only Sepal.Length and Sepal.Width and cluster it
iris_subset <- iris[, c("Sepal.Length", "Sepal.Width")]

set.seed(123)
km_subset <- kmeans(iris_subset, centers = 3, nstart = 25)

fviz_cluster(km_subset, data = iris_subset, geom = "point")

