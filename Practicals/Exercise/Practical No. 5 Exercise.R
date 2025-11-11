#q1 
# importing data
data(iris)
summary(iris$Sepal.Length)
iris$SepalLengthCat <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5.5, 6.5, Inf),   
  labels = c("LOw", "Medium", "HIgh")
)
head(iris[, c("Sepal.Length", "SepalLengthCat")])

#q2 

# Using base R
species_dummies <- model.matrix(~ Species - 1, data = iris)
iris_encoded <- cbind(iris, species_dummies)
head(iris_encoded)

#q3 Normalize 
data(mtcars)
mtcars$mpg_norm <- (mtcars$mpg - min(mtcars$mpg)) / (max(mtcars$mpg) - min(mtcars$mpg))
head(mtcars[, c("mpg", "mpg_norm")])

# Standardize the Sepal.Width column in iris
iris$SepalWidth_std <- scale(iris$Sepal.Width)
head(iris[, c("Sepal.Width", "SepalWidth_std")])


#Create a new feature in mtcars: efficiency = mpg/hp
mtcars$efficiency <- mtcars$mpg / mtcars$hp
head(mtcars[, c("mpg", "hp", "efficiency")])


