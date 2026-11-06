#Author: Briana Nabriat, Date: 11/5/26, Purpose: chi-square practice

# Open file selector to select the dataset to read
data_frame <- read.csv("https://raw.githubusercontent.com/CSSEGISandData/COVID-19/refs/heads/master/csse_covid_19_data/csse_covid_19_daily_reports/01-22-2022.csv")

# Extract 2 columns

data <- data_frame[,c("Province_State", "Country_Region")] 

# Remove NA cells
data1 <- na.omit(data)

table(data1$Province_State, data1$Country_Region)


chisq.test(data1$Province_State,data1$Country_Region,correct=FALSE)
	
	Pearson's Chi-squared test

data:  data1$Province_State and data1$Country_Region
X-squared = 93821, df = 119600, p-value = 1