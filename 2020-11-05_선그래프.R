month = 1:12
late = c(5,8,7,9,4,6,12,13,8,6,6,4)

plot(month,
     late,
     main = "Late students",
     type= "l", #그래프의 종류 선택 (l,b,o)
     lty=1, #선의 종류 (1~6)
     lwd=1, #선의 굵기 선택
     xlab="Month",
     ylab="Late cnt")

month <- 1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)

plot(month,
     late1,
     type="b",
     lty=1,
     col="red",
     xlab="Month",
     ylab="Late cnt")
lines(month,
      late2,
      type="b",
      col="blue")
