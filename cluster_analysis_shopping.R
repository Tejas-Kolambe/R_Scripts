shopping<- read_excel("C:/Users/dbda/Downloads/Case 2_Shopping Mall_Cluster Analysis.xlsx")
attach(shopping)
m<-apply(shopping,2,mean)     
m
s<-apply(shopping,2,sd)
s
shopping<-scale(shopping,m,s)
distance<-dist(shopping)
distance

hc.c<-hclust(distance)
hc.c
plot(hc.c)

member_cluster<-cutree(hc.c,3)
member_cluster

aggregate(shopping,list(member_cluster),mean)


