library(dplyr)
library(ggplot2)
#Importing data
data("mtcars")
head(mtcars)

#Simple linear regression 
model_simple <- lm(mtcars$mpg ~ mtcars$wt,data = mtcars)
summary(model_simple)

#PLotting regression line

ggplot(mtcars,aes(x = wt, y = mpg))+
  geom_point(color = "blue") + geom_smooth(method = "lm", se = TRUE, color = "red")+
  labs(title = "Simple linear regression" , x= "wt in lbs" , y = "miles per gallion")

#Multiple Linear Regression
model_multiple <- lm(mtcars$mpg ~ mtcars$wt + mtcars$hp, data = mtcars)
summary(model_multiple)

#Residual Diagnostic 
plot(model_multiple, which = 1)
plot(model_multiple, which = 2)
