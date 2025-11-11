library(dplyr)

#Importing the daa set
data("iris")
head(iris)
str(iris)
summary(iris)


# importing another dataset
data("mtcars")
head(mtcars)
str(mtcars)


#Titanic data set
data("Titanic")
Titanic

#Checking for missing values
sum(is.na(iris))
colSums(is.na(mtcars))

#Summarizing Disttribution

iris %>% 
  group_by(Species) %>%
  summarise(
    Avg_Sepal_Length = mean(Sepal.Length),
    Avg_Petal_Length = mean(Petal.Length)
  )
)
