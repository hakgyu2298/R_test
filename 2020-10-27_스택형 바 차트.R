height1<-c(4,18,5,8)
height2<-c(9,15,20,6)

height<-rbind(height1,height2)
height

names<-c("영업 1팀","영업 2팀","영업 3팀","영업 4팀")
legend_lbl<-c("2014년","2015년")

barplot(height,main="부서별 영업 실적",
        names.arg=name,
        xlab="부서",ylab="영업 실적(억 원)",
        col=c("darkblue","red"),
        legend.text=legend_lbl,
        ylim=c(0,35),
        beside=TRUE,
        args.legend=list(x='top'))