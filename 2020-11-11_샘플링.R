x <- 1:100
y <- sample(x,size=10,replace=FALSE) #비복원 추출
y

idx <- sample(nrow(iris),size=50,replace=FALSE)
idx
iris.50 <- iris[idx,]
head(iris,50)

combn(5,3)

x <- c("red","green","blue","black","white")
com <- combn(x,2)
com
for(i in 1:ncol(com)){
  cat(com[,i],"\n")
}
