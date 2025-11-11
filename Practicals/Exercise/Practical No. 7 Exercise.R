library(dplyr)

data("mtcars")
head(mtcars)

t_test_result <- t.test(mtcars$mpg , mu=20)
t_test_result


#anova

data("iris")
head(iris)

anova_result <- aov(iris$Petal.Width ~ iris$Species, data = iris)
anova_result

#correlation
corr_mpg <- cor(mtcars$mpg, mtcars$hp)
corr_mpg

#paired test
paired_test <- t.test(iris$Sepal.Length ,iris$Sepal.Width, paired = TRUE)
paired_test

data("airquality")
head(airquality)
corr_ozone <- cor(airquality$Ozone , airquality$Temp)
corr_ozone
