# One sample T-Test
Indian_oil_ethanol <- read_excel("C:/Users/dbda/Downloads/Indian oil_ethanol.xlsx")
View(Indian_oil_ethanol)
attach(Indian_oil_ethanol)
?.t.test()
t.test(`Mileage with ethanol`,mu=12)
sd(`Mileage with ethanol`)
t.test(x,mu=12,alternative = c("two.sided"),conf.level=0.95)

