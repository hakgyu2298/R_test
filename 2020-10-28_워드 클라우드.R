install.packages("wordcloud")
library(wordcloud)

word<-c("인천광역시","강화군","옹진군")
frequency<-c(651,85,61)

wordcloud(word,frequency,random.order = F,random.color = F,
          colors = rainbow(length(word)))
