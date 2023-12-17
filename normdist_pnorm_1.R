#mean = 70
#std =5

#between 70 and 72
# between 69 and 72
# more than 75
# less than 63

x1<-pnorm(q=70,mean = 70,sd = 5,lower.tail = T)
x2<-pnorm(q=72,mean = 70,sd = 5,lower.tail = T)
x2-x1

x3<-pnorm(q = 69,mean = 70,sd = 5,lower.tail = T)
x4<-pnorm(q=72,mean = 70,sd = 5,lower.tail = T)
x4-x3

x5<-pnorm(q=75,mean = 70,sd = 5,lower.tail = T)
1-x5

x6<-pnorm(q = 63,mean = 70,sd = 5,lower.tail = T)
x6
