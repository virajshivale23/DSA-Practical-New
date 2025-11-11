library(dplyr)
#Q1 importing air quality data set
data("airquality")
str(airquality)
summary(airquality)

#q2 find numbre of missing values
sum(is.na(airquality))

#Q3 use summary() n mtcars

summary(mtcars)

#Q4 Find mean of horse power in mtcars data set

mean(mtcars$hp)

#q5 group the irsi data set by species and calculate average Sepal.width

iris %>% 
  group_by(Species) %>%
  summarise(
    Avg_Sepal_Width = mean(Sepal.Width)
  )
)