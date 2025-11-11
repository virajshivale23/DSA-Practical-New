library(dplyr)


#Importing Data
data("airquality")
sum(is.na(airquality))
colSums(is.na(airquality))


#Replacing missing value with median
airquality$Ozone[is.na(airquality$Ozone)] <- median(airquality$Ozone, na.rm = TRUE)


# Create duplicate dataset and remove duplicates
mtcars_dup <- rbind(mtcars, mtcars)
mtcars_unique <- unique(mtcars_dup)

# Convert row names to uppercase
rownames(mtcars) <-toupper(rownames(mtcars))

# Convert Species to numeric codes
iris$Species <- as.numeric(as.factor(iris$Species))

head(airquality)
head(mtcars)
head(iris)



