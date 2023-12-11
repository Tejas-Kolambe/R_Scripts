#chi square

chi_square <- read_excel("C:/Users/dbda/Downloads/chi-square.xlsx")
attach(chi_square)
table(grade)
table(code,grade)

tab=table(code,grade)
chisq.test(tab,correct=T)
CHI<-chisq.test(tab,correct=T)
CHI$p.value
CHI$expected

fisher.test(tab,conf.int = T)
