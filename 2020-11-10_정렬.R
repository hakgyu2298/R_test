v1 <- c(1,7,6,8,4,2,3)
order(v1)
v1 <- sort(v1)
v1
v2 <- sort(v1,decreasing=T)
v2

head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]

iris[order(iris$Sepal.Length, decreasing=T),]
iris[order(iris$Species, iris$Sepal.Length),]

v3 <- c(1,7,2,5)
order(v3)
rank(v3)
