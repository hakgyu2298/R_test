agg <- aggregate(iris[,-5],by=list(iris$Species),
                 FUN = mean)
agg

agg <- aggregate(iris[,-5],by=list(iris$Species),
                 FUN = sd)
agg

head(mtcars)
agg <- aggregate(mtcars,by=list(mtcars$cyl,
                                mtcars$vs),FUN=max)
agg

agg <- aggregate(mtcars,by=list(cyl=mtcars$cyl,
                                vs=mtcars$vs),FUN=max)
agg
