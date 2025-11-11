
library(dplyr)

#Importing data 
data("iris")

# 1. t-test: Compare Sepal.Length of setosa and versicolor
iris_two <- iris %>% filter(Species %in% c("setosa", "versicolor"))

# t-test using formula interface (Sepal.Length by Species)
t_test_result <- t.test(Sepal.Length ~ Species, data = iris %>% filter(Species %in% c("setosa", "versicolor")))
t_test_result

# ANOVA: Compare Sepal.Length across all species
anova_model <- aov(Sepal.Length ~ Species, data = iris)
summary(anova_model)

# Correlation: Sepal.Length and Petal.Length 
correlation <-cor(iris$Sepal.Length , iris$Petal.Length)
correlation

# Correlation test with significance

cor_test <- cor.test(iris$Sepal.Length, iris$Petal.Length)
print(cor_test)
