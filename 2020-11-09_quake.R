library(ggmap)
library(ggplot2)

df <- head(quake,100)
cen <- c(mean(df$long),mean(lat=df$lat))
gc <- data.frame(lon=df$long,lat=df$lat)
gc$lon <- ifelse(gc$lon>180, -(360-gc$lon), gc$lon)
gc
map <- get_googlemap(center=cen,
                      maytpe="roadmap",
                      zoom=4,
                      market=gc)
ggmap(map)+theme(axis.title.x = element_blank(),
                 axis.text.x = element_blank(),
                 axis.ticks.x=element_blank(),
                 axis.title.y=element_blank(),
                 axis.test.y=element_blank(),
                 axis.ticks.y=element_blank())
map <- get_googlemap(center = cen,
                     maptype="roadmap",
                     zoom=5)
gamp <- ggmap(map)
gmap+geom_point(data=df,
                aes(x=long,y=lat,size=mag),
                alpha=0.5)