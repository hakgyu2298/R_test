d <- c(1,4,3,7,8)
2*8
d-5
3*d+4

x <- c(1,2,3)
y <- c(4,5)
c(x,y)
z <- c(x,y)
z

x <- c(1,2,3)
y <- c(4,5,6)
x+y
z <- x+y
x-y
x/y
z

d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d, decreasing=FALSE)
sort(d, decreasing=TRUE)

v1 <- median(d)
v1
v2 <- sum(d)/length(d)
v2

v1 <- c(4,2,3,1,6,10,8,9)

sort(x=v1, decreasing = TRUE)
sort(v1,FALSE)
sort(v1)

d <- c(1,2,3,4,5,6,7,8,9)
d>=5
d[d>5]
sum(d>5)
sum(d[d>5])
d==5

condi <- d>5&d<8
d[condi]
