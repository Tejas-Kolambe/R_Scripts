#MAX Z = 5S – 5T		
#s.t. 3T < 18		
#4S + 4T < 40		
#2S < 14		
#6S - 15T < 30		
#3S > 9		

obj1.func<-c(5,-5)
constr1<-matrix(c(0,3,4,4,2,0,6,-15,3,0),ncol = 2,byrow = TRUE)
constr.dir<-c("<=","<=","<=","<=",">=")
available<-c(18,40,14,30,9)
library(lpSolve)

sol<-lp("max",obj1.func,constr1,constr.dir,available,compute.sens = TRUE)
sol
sol$solution
