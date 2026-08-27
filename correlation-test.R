#Name: Briana Nabriat, Date: 08/27/2026, Purpose: Test the correlation analysis

#install package ggpubr
if(!require(devtools))install.packages("devtools");
devtools::install_github("kassambara/ggpubr")

#load package ggpubr
library("ggpubr")

#load dummy dataset
my_data <- mtcars 

#alternate hypothesis: the weight of the car is inversely related to the miles per gallon it can travel
#null hypothesis: there is no difference/relation between the weight of the car and the miles per gallon it can travel

#creates plot in new window
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")
