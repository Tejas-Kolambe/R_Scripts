logit <- read_excel("C:/Users/dbda/Downloads/logit.xlsx")
attach(logit)

#model

Model<-glm(type~npreg+glu+bp+skin+bmi+ped+age, data = logit,family='binomial')
summary(Model)

respo<-predict(Model,logit,type = "response")
respo #what our model our model predicted and what was actual

#confusion matrix
table(Actualvalue=logit$type,Predictedvalue=respo>0.5)

library(rcompanion)

nagelkerke(Model)
