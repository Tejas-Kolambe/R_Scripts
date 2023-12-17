
#density binom
dbinom(x=5,size = 10,p=1/2)
dbinom(x=8:10,size = 10,p=1/2)
sum(dbinom(x=8:10,size = 10,p=1/2))
dbinom(x=0:3,size = 10,p=1/2)
sum(dbinom(x=0:3,size = 10,p=1/2))
dbinom(x=1:10,size = 10,p=1/2)
sum(dbinom(x=1:10,size = 10,p=1/2))

#probability binom
# At least 8 heads
pbinom(q=7,size = 10,prob = 1/2,lower.tail = F)
#at least 3 heads
pbinom(q=3,size=10,prob = 1/2,lower.tail = T)
pbinom(q=0,size=10,prob = 1/2,lower.tail = F)

x<-rbinom(8,150,.4)
x
?rbinom
