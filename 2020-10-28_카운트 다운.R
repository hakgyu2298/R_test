install.packages("animation")
library(animation)

ani.options(interval=1)

plot.new()

for(i in 10:0){
  
  rect(0,0,1,1, col="yellow")
  size=11-i
  text(0.5,0.5,i,cex=size,col=rgb(0,0,1,1))
  ani.pause()
}