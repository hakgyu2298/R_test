ans <- c("Y","Y","N","Y","Y")
table(ans)
table(ans)/length(ans)

iris$Species
table(iris$Species)

favorite.color <- c("red","green","yellow",
                    "red","green","red","red")
sum<- table(favorite.color)
sum
barplot(sum,main="Favorite color")


par(mfrow=c(1,3))
barplot(table(mtcars$carb),
        main="Barplot of Carburetors",
        xlab="#of carburetors",
        ylob="frequency",
        col="blue")
barplot(table(mtcars$cyl),
        main="Barplot of Cylender",
        xlab="#of cylender",
        ylab="frequency",
        col="red")
barplot(table(mtcars$gear),
        main="Barplot of Grar",
        xlab="#of gears",
        ylab="frequency",
        col="green")

favorite.color <- c("red","green","yellow",
                    "red","green","red","red")
sum <- table(favorite.color)
pie(sume,main="Favorite color")
