One_Way_Anova_CBSE <- read_excel("F:/CDAC/Advance_Analytics/Institute_Notes/Day-8_ANOVAs/One Way ANOVA/One_Way_Anova_ CBSE.xlsx")
attach(One_Way_Anova_CBSE)
View(One_Way_Anova_CBSE)
str(One_Way_Anova_CBSE)#as it in num we have to convert to factor 
One_Way_Anova_CBSE$City<-as.factor(One_Way_Anova_CBSE$City)#converting it to factor
str(One_Way_Anova_CBSE)
#assumption
library(nortest)
shapiro.test(Marks)

library(car)
leveneTest(One_Way_Anova_CBSE$Marks,One_Way_Anova_CBSE$City)
Model<-aov(Marks~City,data=One_Way_Anova_CBSE)
summary(Model)
TukeyHSD(Model)
