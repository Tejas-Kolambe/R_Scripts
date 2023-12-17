#mean=14
#std=2.5

#between 12 and 15
#more than 18
#less than 8
#eqaual to 16 (between 15.5 and 16.4)

x1<-pnorm(q = 12,mean = 14,sd = 2.5,lower.tail = T)
x2<-pnorm(q = 15,mean = 14,sd = 2.5,lower.tail = T)
x2-x1

x3<-pnorm(q = 18,mean = 14,sd = 2.5,lower.tail = T)
1-x3

x4<-pnorm(q = 8,mean = 14,sd = 2.5,lower.tail = T)
x4

x5<-pnorm(q = 15.5,mean = 14,sd = 2.5,lower.tail = T)
x6<-pnorm(q = 16.4,mean = 14,sd = 2.5,lower.tail = T)
x6-x5
