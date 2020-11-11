library(ggmap)
gc <- geocode(enc2utf8("용인")) #구글 api키는 3개월 무료
cen <- as.numeric(gc)
map <- get_googlemap(center=cen)
ggmap(map)

gc <- geocode(enc2utf8("설악산"))
class(gc)
cen <- as.numeric(gc)
is.vector(cen)
map <- get_googlemap(center=cen,
                     zoom=8,
                     size=c(640,480),
                     maptype="hybrid")
ggmap(map)

cen <- c(-118.233248,34.085015) #경도,위도
map <- get_googlemap(center=cen)
ggmap(map)

gc <- geocode(enc2utf8("용인"))
cen <- as.numeric(gc)
map <- get_googlmap(center=cen,
                    maptype="roadmap",
                    market=gc)
ggmap(map)


library(ggplot2)

names <- c("용두암","성산일출봉")
addr <- c("제주시 용두암길 15","서귀포시 성산읍 성산리")
gc <- geocode(enc2utf8(addr))
df <- data.frame(name=names,
                 lon=gc$lon,
                 lat=gc$lat)
df
View(df)

cen <- c(mean(df$lon),mean(df$lat))
map <- get_googlemap(cneter=cen,
                     maptype="roadmap",
                     zoom=10,
                     size=c(640,480),
                     market=gc)
ggmap(map)

gmap <- ggmap(map)
gmap+geom_text(data=df,
               aes(x=lon,y=lat),
               size=5,
               label=df$name)


