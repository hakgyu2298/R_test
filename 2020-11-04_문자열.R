
paste("Good","Morning",sep=" ")
paste("Good","Morning","Tom",sep="/")
paste(1:10,"is good", sep=" ")

str <- "Good Morning"
substr(str, 1,4)
substr(str, 6,nchar(str))

str <- "Good Morning"
gsub("Good","nice",str)  #replace
str <- gsub(" ","/",str)
str
