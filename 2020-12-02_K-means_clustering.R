require(graphics)

x <- rbind(matrix(rnorm(100,sd=0.3),ncol=2),
           matrix(rnorm(100,mean=1,sd=0.3),
                  ncol=2))

colnames(x) <- c("x","y")
cl <- kmeans(x,2)
cl

plot(x,col=cl$cluster)
points(cl$centers,col=1:2,pch=8,cex=2)

cl <- kmeans(x,5,nstart=25)
plot(x,col=cl$cluster)
points(cl$centers, col=1:5,pch=8)
