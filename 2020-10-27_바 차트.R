height<-c(9,15,20,6)



name<-c("영업 1팀","영업 2팀","영업 3팀","영업 4팀")




bp<-barplot(height,names.arg = name,main = "부서별 영업 실적",
            col=rainbow(length(height)),xlab="부서",ylab="영업 실적(억 원)",
            ylim=c(0,25))
text(x=bp,y=height,labels = round(height,0),pos=3)




