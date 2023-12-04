CR <- read_excel("F:/CDAC/Advance_Analytics/Institute_Notes/Day-9_Correlation_Simple and Multiple Regression _Stepwise Regression/Regression_Simple and Multiple/Simple Regression/SR.xlsx")
attach(CR)
#Assumptions
library(nortest)
shapiro.test(advt)
shapiro.test(sales)# hence data is not normally distributed 0.008<0.05
plot(advt,sales)
boxplot(advt)
boxplot(sales)#outlier in sales
cor(advt,sales )
cor.test(advt,sales)
cor.test(advt,sales,method = "pearson")
cor.test(advt,sales,method = "spearman")
