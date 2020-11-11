library(ggplot2)

ggplot(data=iris,aes(x=Petal.Length,
                     y=Petal.Width))+geom_point()

ggplot()+geom_point(data=iris,aes(x=Petal.Length,
                                  y=Petal.Width))

ggplot()+geom_point(
  data=iris,
  aes(x=Petal.Length, y=Petal.Width),
  color="red",
  size=4
)

ggplot(data=iris,
       aes(x=Petal.Length,y=Petal.Width))+
  geom_point(
    aes(color=Species, shape=Species),
    alpha=0.5,
    size=2
  )

gp <- ggplot(data=iris,
             aes(x=Petal.Length,y=Petal.Width))+
  geom_point(
    aes(color=Species, shape=Species),
    alpha=0.5,
    size=2
  )
gp+ggtitle("IRIS data")+
  theme(plot.title = element_text(size=14,
                                  face = "bold",color="blue",hjust = 0.5))
gp2 <- gp+ggtitle("IRIS data")+
  theme(plot.title = element_text(size=14,
                                  face = "bold",color="blue",hjust = 0.5))
gp2


ggplot(mtcars, aes(x=wt, y=mpg))+
  geom_line(color="red",size=1)


df <- data.frame(table(mtcars$carb))
df
ggplot(df,aes(x=Var1,y=Freq))+
  geom_bar(stat="identity", width=0.7,fill="steelblue")


ggplot()+
  geom_boxplot(data=iris,
               aes(x=Species,y=Petal.Length,
                   fill=Species))



