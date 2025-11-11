library(dplyr)
library(ggplot2)
data("iris")
head(iris)

model_simple_iris <- lm(iris$Petal.Length ~ iris$Sepal.Length,data = iris)
summary(model_simple_iris)


data("mtcars")
head(mtcars)
model_multiple_mtcars <- lm(mtcars$mpg ~ mtcars$wt + mtcars$hp + mtcars$drat, data = mtcars)
summary(model_multiple_mtcars)
