#poission distribution
#5% bulb question

dpois(x = 0,lambda = 5)   #lambda is MEAN value
dpois(x = 3,lambda = 5)
dpois(x=4:100,lambda = 5)
sum(dpois(x=4:100,lambda = 5))

#more than 3 bulbs are defective

ppois(q=3,lambda = 5,lower.tail = F)

rpois(10,lambda = 5) #random generation

