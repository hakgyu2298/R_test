install.packages("plotrix")
library(plotrix)


x<-c(9,15,20,6)
pct<-round(x/sum(x)*100)


label<-c("영업 1팀","영업 2팀","영업 3팀","영업 4팀")
label<-paste(label,pct)
label<-paste(label,"%",spe="")


pie(x,init.angle=90,labels = label,col=rainbow(length(x)),main = "부서별 영업 실적")
pie3D(x,labels=label,explode=0.1,labelcex=0.8,main="부서별 영업 실적")

