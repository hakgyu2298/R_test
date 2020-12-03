require("class")



group.1 <- cut(seq(1,50),breaks=5,labels=FALSE)
group.2 <- cut(seq(51,100),breaks=5,labels=FALSE)
group.3 <- cut(seq(101,150),breaks=5,labels=FALSE)
fold <- c(group.1,group.2,group.3)

acc <- c()
for(i in 1:5){
  ds.tr <- iris[fold !=i, 1:4]
  ds.ts <- iris[fold ==i, 1:4]
  cl.tr <- factor(iris[fold !=i,5])
  cl.ts <- factor(iris[fold ==i,5])
  pred <- knn(ds.tr, ds.ts, cl.tr, k=3)
  acc[i] <- mean(pred==cl.ts)
}

acc
mean(acc)
