#two way annova

Two_way_ANOVA <- read_excel("C:/Users/dbda/Downloads/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
#will conert the numeric variable in factor variable
Two_way_ANOVA$Place<-as.factor(Two_way_ANOVA$Place)
Two_way_ANOVA$Education<-as.factor(Two_way_ANOVA$Education)        

str(Two_way_ANOVA)
Model<-aov(Sales~Place+Education,data = Two_way_ANOVA)
summary(Model)
Model1<-aov(Sales~Place+Education+Place*Education,data = Two_way_ANOVA)
summary(Model1)
TukeyHSD(Model1)
model.tables(Model1,"mean")  #mean of mean
