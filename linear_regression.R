
for_SLR <- read_excel("F:/CDAC/Advance_Analytics/Excel Sheets/for_SLR.xlsx")
attach(for_SLR)

library(nortest)

shapiro.test(compensation)
shapiro.test(performance)

plot(compensation,performance)

boxplot(compensation)
boxplot(performance)

#linear regression

model<-lm(performance~compensation,data = for_SLR)
summary(model)

#57% independent variable explaining the dependent