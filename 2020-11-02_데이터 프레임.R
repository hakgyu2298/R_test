city <- c("Seoul","Tokyo","Washington")
rank <- c(1,3,2)
city.info <- data.frame(city,rank)

city.info[3,1]
city.info[2,]
city.info[,1]

iris[,"Species"] #<-벡터
iris$Species #<-벡터
iris["Species"] #<-데이터 프레임

iris[,c(1:2)]
iris[,c(1,3,5)]
iris[,c("Sepal.Length","Species")]
iris[1:50,]
iris[1:50,c(1,3)]
