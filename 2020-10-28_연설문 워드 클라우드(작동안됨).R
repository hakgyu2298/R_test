install.packages("KoNLP")
install.packages("RColorBrewer")
install.packages("wordcloud")

library(KoNLP)
library(RColorBrewer)
library(wordcloud)

useSejongDic()

pa12<-brewer.pal(8,"Dark2")
text<-readLines(file.choose())

noun<-sapply(text,extractNoun,USE.NAMES = F)

noun2<-unlist(noun)

word_count<-table(noun2)

head(sort(word_count,decreasing=TRUE),10)
wordcloud(names(word_count),freq = word_count,scale=c(6,0.3),mini.freq=3,
          random.order=F,rot.per = 1,colors=pa12)