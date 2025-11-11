library(ggplot2)
library(ggcorrplot)
#Create Histogram
data("mtcars")
head(mtcars)

ggplot(mtcars, aes(x = mpg))+
  geom_histogram(bins = 20, fill = "lightblue" ,color = "black")
labs(title = "Histogram of  mpg in mtcars data set" , x = "Miles Per Gallon")


#Genreate scatterplot of hp vs wt from mtcars

ggplot(mtcars ,aes(x = hp, y = wt, colour = "black"))+
  geom_point(size = 3) + 
labs(title = "hp vs wt")

#Draw boxplot of ozone values

data("airquality")
head(airquality)

ggplot(airquality, aes(y = "Ozone Values", colour = "lightgreen" )) +
  geom_boxplot()
labs(title = "BOxplot of Ozone Values")


#Find Correlation between
data("iris")
head(iris)
corr_matrix = cor(iris$Sepal.Length,iris$Sepal.Width)
corr_matrix

# Create pair plot 
data("mtcars")
head(mtcars)
ggpairs(mtcars[,1:4])
