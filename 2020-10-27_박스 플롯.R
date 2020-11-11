mag<-quakes$mag
min(mag)
max(mag)
quantile(mag,c(0.25,0.5.0.75))
boxplot(mag,main="지진 발생 강도의 분포",xlab="지진",ylab="발생 건수",
        col="red")