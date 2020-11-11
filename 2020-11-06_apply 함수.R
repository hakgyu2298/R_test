for(i in 1:4){
  print(mean(iris[,i]))
}

apply(iris[,1:4],1,mean)
apply(iris[,1:4],2,mean)

lapply(iris[,1:4],mean)

abc<-list(mtcars[,1], mtcars[,2], mtcars[,3], mtcars[,4])
lapply(abc,mean)
lapply(abc,mean)[[1]]

sapply(iris[,1:4],mean)
sapply(iris[,1:4],mean,simpliify=F)

myfunc <- function(x){
  a <- max(x)
  b <- min(x)
  return(a-b)
}
sapply(iris[,1:4],myfunc)