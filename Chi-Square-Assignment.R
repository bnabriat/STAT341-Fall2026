#Author: Briana Nabriat, Date: 11/10/2026, Purpose: Chi-Square Practice


setwd("/Users/bnabriat/Downloads")

data <- read.csv("01-22-2022.csv", header=TRUE)

chisq.test(na.omit(data$Province_State),na.omit(data$Country_Region),correct=FALSE)

	Pearson's Chi-squared test

data:  na.omit(data$Province_State) and na.omit(data$Country_Region)
X-squared = 93821, df = 119600, p-value = 1


