x <- data.frame(name=c("a","b","c"),math=c(90,80,70))
y <- data.frame(name=c("a","b","d"),korean=c(75,60,90))
x
y
merge(x,y, by=c("name"))

merge(x,y, all.x=T)
merge(x,y, all.y=T)
merge(x,y, all=T)

x <- data.frame(name=c("a","b","c"),math=c(90,80,70))
y <- data.frame(sname=c("a","b","d"),korean=c(75,60,90))

merge(x,y,by.x=c("name"),by.y=c("sname"))