setwd("C:/Users/user/Desktop/밀화부리/R")
write.csv(iris,"test.csv",row.names = F,quote=F)

setwd("C:/Users/user/Desktop/밀화부리/R")
mydata <- read.csv("test.csv",header = TRUE)
mydata

head(mydata)
tail(mydata)

mydata[2,3]
nrow(mydata)
ncol(mydata)
dim(mydata)

myRow1 <- mydata[2,]
myRow2 <- mydata[,3]

mynew <- mydata[,c(2,3)]
write.csv(mydata,"kid_new.csv",
          row.names = F,quote=F)

setwd("C:/Users/user/Desktop/밀화부리/R")
mydata <- read.csv("test.csv",header = TRUE)
head(mydata)

mydata <- read.csv("C:/Users/user/Desktop/밀화부리/R/test.csv",
                   header=TRUE)
mydata <- read.csv(file.choose(),
                   header=TRUE)