library(MASS)
head(UScrime)
radius <- sqrt(UScrime$Pop)
symbols(UScrime$U2,UScrime$y,
       circles=radius,
       inches=0.4,
       fg="white",
       bg="lightgray",
       lwd=1.5,
       xlab="unemployment 35-39 males",
       ylab="crime rate",
       main="UScrime Data")
text(UScrime$U2, UScrime$y,
     1:nrow(UScrime),
     cex=0.8,
     col="brown")
