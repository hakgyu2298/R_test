setwd("C:/Users/user/Desktop/밀화부리/R")
hospital <- read.csv("Hospital.csv")
head(hospital)
table(hospital)
mosaicplot(~freq+stay, data=hospital, color=c("green","blue","red"),
           main="병원내빈도vs치료기간")

tbl <- table(hospital)
mosaicplot(tbl,color=TRUE,
           main="병원내빈도vs치료기간")

Titanic
mosaicplot(Titanic,color=TRUE,off=5)
mosaicplot(Titanic,
           main="Survival on the Titanic",
           color=c("red","green"),
           off=1)
