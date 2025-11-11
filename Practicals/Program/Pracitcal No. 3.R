library(dplyr)

#importing data

data("airquality")
head(airquality)


#checking for missing values
sum(is.na(airquality))
colSums(is.na(airquality))

# handling missing values
airquality$Ozone(is.na(airquality$Ozone)) <- mean(airquality$Ozone, na.rm = TRUE)

#Replacing the missing Solar R values with median

airquality$Solar.R(is.na(airquality$Solar.R)) <- median(airquality$Solar.R, na.rm = TRUE)


# Removing fuplicates
data("iris")
iris_with_duplicates <- rbind(iris,iris[1:5,])
nrow(iris_with_duplicates)
iris_clean <- distinct(iris_with_duplicates)
nrow(iris_clean)


#Standardise format
iris_clean$Species <- tolower(as.character(iris_clean$Species))
iris_clean$Species <- as.factor(iris_clean$Species)

head(iris_clean)

                                                    