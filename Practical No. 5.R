library(dplyr)
install.packages("caret")
library(caret)

#importing data
data("mtcars")
head(mtcars)

mtcars$mpg_category <- cut(mtcars$mpg,breaks = c(-Inf , 15,25,Inf),
                           labels = c("Low", "Medium", "High"))
table(mtcars$mpg_category)


#convert species to numeric

data("iris")
iris$Species_code <-as.numeric(as.factor(iris$Species))
head(iris[,c("Species","Species_code")])

#Normalization 
mtcars$wt_normalised <- (mtcars$wt- min(mtcars$wt)) / (max(mtcars$wt) - min(mtcars$wt))


#Standardisation Z-Score fr hp
mtcars$hp_zscore <- scale(mtcars$hp)
head(mtcars$hp_zscore)

#feature creation power to weight ratio
mtcars$power_to_weight <- mtcars$hp / mtcars$wt
head(mtcars$power_to_weight)

