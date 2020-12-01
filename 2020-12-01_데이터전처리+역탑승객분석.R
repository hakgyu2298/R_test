library(ggplot2)
library(ggmap)

setwd("C:/Users/user/Desktop/밀화부리/R")
subway <- read.csv("subway.csv", header = TRUE,
                   stringsAsFactors = FALSE, encoding = "UTF-8")
head(subway)
str(subway)

class(subway[,"income_date"]) <- "character"
subway[,"income_date"] <- as.Date(subway[,
                                         "income_date"],format="%Y%m%d")
unique(format(subway[,"income_date"],"%Y"))

idx <- format(subway[,"income_date"],"%Y")=="2014"
unique(format(subway[idx,"income_date"],"%m"))
subway2 <- subset(subway,subset=
                    format(income_date,"%Y") != "2014")

sort(unique(subway2[,'stat_name']))

idx <- grep("\\(",subway2$stat_name)
unique(subway2$stat_name[idx])

subway2$stat_name[idx] =
  substr(subway2$stat_name[idx],
         1, nchar(subway2$stat_name[idx])-3)

year <- format(subway2$income_date,"%Y")
month <- format(subway2$income_date,"%m")
subway2 <- cbind(subway2,year,month)
head(subway2)

subname <- read.csv('subway_latlong.csv',
                    header=TRUE,stringsAsFactors=FALSE,encoding = "UTF-8")
head(subname)

tot <- aggregate(subway2[,"on_tot"],
                 by=list(stat_name = subway2$stat_name),
                 FUN=sum)
tot

cc <- merge(x=tot,y=subname, by.x="stat_name",by.y="STATION_NM")
df2 <- data.frame(stat_name = cc$stat_name,
                  line_num=cc$LINE_NUM, on_tot=cc$x)

df2 <- df2[order(df2$line_num),]
df2$stat_name <- factor(df2$stat_name,levels=df2$stat_name)

plt <- ggplot(df2,aes(x=stat_name,y=on_tot,
                      fill=line_num, dorder=line_num))
plt+theme_bw()+geom_bar(stat="identity",
                        colour="white")+
  scale_x_discrete("지하철역",labels=NULL)+
  ylab("탑승객수")+
  scale_fill_discrete(name=c("노선"))

df3 <- df2[order(-df2$on_tot),]
df3 <- df3[1:10,]
df3$stat_name <- factor(df3$stat_name,
                        levels=df3$stat_name)

lim <- c(0,max(df3$on_tot))
plt <- ggplot(df3,aes(stat_name,y=on_tot,
                      fill=line_num))
plt+geom_bar(stat="identity",colour="white")+
  xlab("상위 10개 지하철역")+
  scale_y_continuous("탑승객수",lim=lim)+
  scale_fill_discrete(name=c("노선"))

df4 <- df2[order(df2$on_tot),]
df4 <- df4[1:10,]
df4$stat_name <- factor(df4$stat_name,
                        levels=df4$stat_name)

lim <- c(0,max(df4$on_tot))
plt <- ggplot(df4,aes(stat_name,y=on_tot,
                      fill=line_num))
plt+geom_bar(stat="identity",colour="white")+
  xlab("하위 10개 지하철역")+
  scale_y_continuous("탑승객수",lim=lim)+
  scale_fill_discrete(name=c("노선"))


ten.station <- df3$stat_name

tmp <- subset(subway2,subset = stat_name %in%
                ten.station&year=="2013",
              select=c("stat_name","on_tot","month"))

stat_top10_2013 <- aggregate(tmp$on_tot,
                             by=list(month=tmp$month,
                                     stat_name=tmp$stat_name),
                             FUN=sum)
names(stat_top10_2013)[3] <- "on_tot"

plt <- ggplot(stat_top10_2013, aes(x=month,y=on_tot,colour=stat_name,
                                   group=stat_name))
plt <- plt+theme_classic()+geom_line()+
  geom_point(size=6,shape=10,alpha=0.5)
plt+scale_x_discrete("2013년",labels=paste0(unique(as.numeric(month)),"월"))+
  ylab("월별 탑승객수")+
  scale_color_discrete(name=c("지하철역"))
