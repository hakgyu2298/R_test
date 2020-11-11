z <- matrix(1:20,nrow=4,ncol=5)
z

z2 <- matrix(1:20,nrow=4,ncol=5,byrow=T)
z2

x <- 1:4
y <- 5:8
m1 <- cbind(x,y)
m2 <- rbind(x,y)
m1
m2

m3 <- rbind(m2,x)
m4 <- cbind(z,x)
m3
m4

z[2,3]
z[1,4]
z[2,]
z[,4]
z
rownames(z)
colnames(z)
rownames(z) <- c("row1","row2","row3","row4")
colnames(z) <- c("col1","col2","col3","col4","col5")
z

z[,"col3"]
z["row2",]
