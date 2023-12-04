#stepwise regresssion
MR1 <- read_excel("C:/Users/dbda/Downloads/MR1.xlsx")
attach(MR1)
fitall<-lm(Buying~.,data=MR1)
fitfirst<-lm(Buying~1,data = MR1)
#step wise forward selection method
step(fitfirst,direction = "forward",scope=formula(fitall))
#backward elimination
step(fitall,direction = "backward")# here we put all the variable all together
#bi directional

step(fitfirst,direction = "both",scope = formula(fitall))
