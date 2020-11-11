beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,
         0.06,0.02,0.05)
tbl <- data.frame(cbind(beers,bal))
plot(bal~beers,data = tbl) #beers가 x축
res <- lm(bal~beers,data=tbl)
abline(res)
cor(beers,bal)

cor(iris[,1:4])
