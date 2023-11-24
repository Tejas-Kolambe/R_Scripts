#independent samples t-test
independent_t <- read_excel("F:/CDAC/Advance_Analytics/Institute_Notes/Day-7_T-tests/T-tests/independent_t.xlsx")
View(independent_t)
attach(independent_t)
library(nortest)
shapiro.test(Mumbai)
shapiro.test(Delhi)

library(moments)
skewness(Mumbai)
skewness(Delhi)

hist(Mumbai)
hist(Delhi)
#independent sample t-test
t.test(Mumbai,Delhi,mu=0)
