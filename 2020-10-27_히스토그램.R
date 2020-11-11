head(quakes)

mag<-quakes$mag


colors<-c("red","orange","yellow","green","blue","navy","violet")
hist(mag,main="지진 발생 강도의 분포",xlab="지진 강도",ylab="발생 건수",
     col=colors,breaks=seq(4,6.5,by=0.5),freq=FALSE)
lines(density(mag))