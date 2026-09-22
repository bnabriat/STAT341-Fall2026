#Author: Briana Nabriat Date: 9/22/2026 Purpose: to perform T-Test

# Create variables x and y with a dummy dataset
x = rnorm(10)
y = rnorm(10)

# make a normal distribution plot/curve for reference
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')


# add x and y points on existing plot window
lines(density(x), col='green')
lines(density(y), col='blue')


# add another curve, color yellow, with points between 2 to 4
pts = seq(2,4,length=100)
lines(density(pts), col='yellow')

# apply the T-Test function to check differences between variables x and y
ttest = t.test(x,y)

Welch Two Sample t-test

data:  x and y
t = 0.84959, df = 15.607, p-value = 0.4084
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.6468948  1.5092359
sample estimates:
  mean of x   mean of y 
 0.35558639 -0.07558417 
 
 # Conclusion: x and y are not significantly different variables/groups (p-value > 0.05)

