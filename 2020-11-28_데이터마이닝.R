head(cars)
plot(dist~speed, data = cars)

mode1 <- lm(dist~speed, cars)
mode1

coef(mode1)[1]
coef(mode1)[2]

speed <- cars[,1]
pred <- 3.932*speed-17.579
pred
compare <-cbind(pred,cars[,2],abs(pred-cars[,2]))
compare

plt(dist~speed, data = cars)
abline(coef(mode1))

library(car)
head(Prestige)

newdata <- Prestige[,c(1:4)]
plot(newdata, pch = 16,col = "blue",
     main = "Matrix Scatterplot")
mod1 <- lm(income~education+prestige+women, data = newdata)
summary(mod1)

library(MASS)
newdata2 <- Prestige[,c(1:5)]
head(newdata2)
mod2 <- lm(income~education+prestige+women+census, data = newdata2)
step <- stepAIC(mod2, direction = 'both')
mod3 <- lm(income~prestige+women,data = newdata2)
summary(mod3)


head(iris)
mod3 <- glm(as.integer(Species)~.,data = iris)
summary(mod3)

pred <- 1.18650+5.1*(-0.11191)+
  3.5*(-0.04008)+
  1.4*0.22865+
  0.2*(0.60925)
pred

unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unknown) <- names(iris)[1:4]
unknown
mod3
pred <- predict(mod3,unknown)
pred
round(pred,0)


test <- iris[,1:4]
pred <- predict(mod3,test)
pred
pred <- round(pred,0)
pred

pred == as.integer(iris[,5])
acc <- mean(pred == as.integer(iris[,5]))
acc



