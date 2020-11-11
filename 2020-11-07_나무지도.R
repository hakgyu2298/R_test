library(treemap)
data(GNI2014)
str(GNI2014)
treemap(GNI2014,
        index=c("continent","iso3"),
        vSize="population",
        vColor="GNI",
        type="value",
        bg.labels="yellow")

GNI2014$GNI.total <- 
  GNI2014$population*GNI2014$GNI
head(GNI2014)

GNI2014.a <- aggregate(GNI2014[,4:6],
                       by=list(GNI2014$continent),sum)
GNI2014.a$GNI.percap <- 
  GNI2014.a$GNI.total/GNI2014.a$population

treemap(GNI2014.a,
        index=c("Group.1"),
        vSize="population",
        vColor="GNI.percap",
        type="value",
        bg.labels = "yellow")