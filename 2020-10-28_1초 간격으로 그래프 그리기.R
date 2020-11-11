library(animation)

ani.options(interval=1)

while(TRUE){ #ESC 키 누르면 멈춤
  y<-runif(5,0,1)
  barplot(y,ylim = c(0,1),col=rainbow(5))
  ani.pause()
}