Book2 <- read_excel("C:/Users/kolam/Desktop/Book2.xlsx")
str(Book2)
Book2$Cardio=as.factor(Book2$Cardio)
Book2$Resp=as.factor(Book2$Resp)
Book2$Hypo=as.factor(Book2$Hypo)

str(Book2)

library(car)

leveneTest(Book2$Adm,Book2$Cardio)
leveneTest(Book2$Adm,Book2$Resp)
leveneTest(Book2$Adm,Book2$Hypo)

model2<-aov(Adm~Cardio+Resp+Hypo,data = Book2)
summary(model2)

model1<-aov(Adm~.,data = Book2)
summary(model1)

#as pr>0.05 there is no significance difference in mean

hist(Adm)
boxplot(Adm)
plot(Adm)
pie(Adm)
plot(Adm)
    