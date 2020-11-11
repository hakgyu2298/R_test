st <- data.frame(state.x77)
boxplot(st$Income)
boxplot.stats(st$Income)$out

out.val <- boxplot.stats(st$Income)$out
st$Income
new.data <- st[complete.cases(st),]
new.data
