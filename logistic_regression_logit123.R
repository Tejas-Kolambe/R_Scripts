logit123 <- read_excel("C:/Users/dbda/Desktop/logit123.xlsx")
attach(logit123)

str(logit123)

logit123$Gender<-as.factor(logit123$Gender)
logit123$`Educational Background`<-as.factor(logit123$`Educational Background`)

str(logit123)

Model<-glm(Selection~.,data=logit123,family = "binomial")
summary(Model)

respo <- predict(Model,logit123,type = "response")
respo

conf<-table(Actualvalue = logit123$Selection,Predictedvalue=respo>0.5)
conf

(13+22)/40*100  # 87.5% accuracy

library(rcompanion)
nagelkerke(Model)
