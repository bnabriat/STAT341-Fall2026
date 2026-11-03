#Author: Briana Nabriat,  Date: 10/27/2026, Purpose: test Chi-square analysis

# Read sample dataset
data_frame <- read.csv("https://goo.gl/j6lRXD") 


#Author: Briana Nabriat, Date: 11/3/2026, Purpose: chi-square transaction analysis

# read sample data
data_frame <- read.csv("https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv")

table(data_frame$Decision, data_frame$Funding.source)

           Credit  Debit  Prepaid
  Approved    4364   4275     366
  Declined     460    484      51


chisq.test(data_frame$Decision,data_frame$Funding.source,correct=FALSE)
	Pearson's Chi-squared test

data:  data_frame$Decision and data_frame$Funding.source
X-squared = 3.6017, df = 2, p-value = 0.1652

