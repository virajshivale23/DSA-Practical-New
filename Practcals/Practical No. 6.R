library(dplyr)
library(ggplot2)
install.packages("GGally")
library(GGally)
install.packages("ggcorrplot")
library(ggcorrplot)

#importing dataset

data("iris")
head(iris)

#Summary Statistics
summary(iris)


#Creating histogram
ggplot(iris, aes(x= Sepal.Length))+
  geom_histogram(bins = 20, fill = "lightblue",color = "black")+
  labs(title = "Dsitribution of Sepal Lenght" , x ="Sepal Lenght " , y = "Frequency")

#Scatterplot

ggplot(iris ,aes(x = Sepal.Length, y = Petal.Length, colour = Species))+
  geom_point(size = 3) + 
  labs(title = "Sepala length vs Petal lENGHT")

# Boxplot
ggplot(iris, aes(x= Species, y= Sepal.Width, fill = Species))+
  geom_boxplot()+
  labs(title = "Boxplot of Sepal width by species")

#Correlation Matrix
corr_matrix = cor(iris[, 1:4])
corr_matrix
ggcorrplot(corr_matrix, lab = TRUE, title = "Correlation matrix heatmap")


#Pair Plot
ggpairs(iris[,1:4])
