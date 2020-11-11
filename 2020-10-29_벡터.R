v1 <- 50:89
v1

v2 <- c(1,2,3,50:90)
v2

v3 <- seq(1,101,3)
v3

v4 <- seq(0.1,1.0,0.1) #sequence
v4

v5 <- rep(1,times=5) #repeat
v5

v6 <- rep(1:5,times=3)
v6

v7 <- rep(c("a","b","c"),each=3)
v7

v8 <- rep(c("a","b","c"),times=3)
v8

score <- c(90,85,70) #성적
names(score) <- c("John","Tom","jane")
score

d <- c(1,4,3,7,8)
d[2]

d <- c(1,4,3,7,8)
d[1:3]
d[c(1,3,5)]
d[seq(1,5,2)]

d <- c(1,4,3,7,8,9)
d[-2]
d[-c(3:5)]

GNP <- c(2090,2450,960)
names(GNP) <- c("Korea","Japan","Nepal")
GNP[1]
GNP["Korea"]
GNP[c("Korea","Nepal")]