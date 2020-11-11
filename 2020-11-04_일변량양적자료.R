mydata <- c(50,60,100,75,200)
mydata.big <- c(mydata,5000)
mean(mydata)
mean(mydata.big)
median(mydata)
median(mydata.big)
mean(mydata,trim=0.2)
mean(mydata.big,trim=0.2)
quantile(mydata)
quantile(mydata,(0:10)/10)
summary(mydata)
fivenum(mydata)

range(mydata)
diff(range(mydata))
var(mydata)
sd(mydata)
library(ggplot2)


boxplot(iris$Petal.Width,ylab="Petal.width")
boxplot(Petal.Width~Species,data=iris,ylab="Petal.width")

st.income <- state.x77[,"Income"]
hist(st.income,
     main="Histogram for Income",
     xlab="income",
     ylab="frequency",
     border = "blue",#막대 테두리색
     col="green",#막대색
     las=2, #x축 글씨방향
     breaks = 5#x축 막대 개수 조절
     )
score <- c(40,55,90,75,59,60,63,65,69,71)
stem(score,scale=2)
