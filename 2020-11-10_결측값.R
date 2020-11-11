x <- c(1,2,3,NA,5,8)
sum(x)
sum(x,na.rm=T)

z <- c(1,2,3,NA,5,NA,8)
is.na(z)
sum(is.na(z))

z[is.na(z)] <- 0
z

x <- c(1,2,3,NA,5,8)
x
y <- as.vector(na.omit(x))
y

x <- iris
x[1,2] <- NA; x[1,3] <- NA
x[2,3] <- NA; x[3,4] <- NA
head(x)

col_na <- function(y){
  return(sum(is.na(y)))
}
na_count <- sapply(x, FUN=col_na)
na_count

is.na(x)
rowSums(is.na(x))
sum(rowSums(is.na(x))>0)

head(x)
x[!complete.cases(x),]
y <- x[complete.cases(x),]
head(y)

library(mice)
md.pattern(x)
result <- mice(x, m=5,maxit=50,
               method="pmm",seed=500)
impute_x <- complete(result,2)
head(x)
head(impute_x)
head(iris)












