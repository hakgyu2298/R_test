
wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt,mpg,
     main="Car weight-mpg",
     xlab="Car weight",
     ylab="Miles Per Gallon",
     col="red",
     pch=19)

vars <- c("mpg","disp","drat","wt")
target <- mtcars[,vars]
pairs(target,
      main="Multi plots")

iris.2 <- iris[,3:4]
point <- as.numeric(iris$Species)
point
color <- c("red","green","blue")
plot(iris.2,
     main="Iris plot",
     pch=c(point),
     col=color[point])