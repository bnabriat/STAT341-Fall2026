#Author: Briana Nabriat, Date: 9/8/2026, Purpose: ANOVA analysis

#load package ggplot2
library(ggplot2)

#load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH)  #df: data frame

#Create a hypothesis (ANOVA only tests for differences): 
#Alternate hypothesis: There is a significant difference for survival with posion type 1 compared to types 2 and 3
#Null hypothesis: there is no significant difference between 1 and other two posions

#plot the dataset using library ggplot2
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()


