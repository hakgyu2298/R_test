for(i in 1:10){
  print(i)
}

for (i in 1:9){
  cat("2 *",i,"=",2*i,"\n" )
}

for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}

v1 <- 101:200
for(i in 1:length(v1)){
  if(v1[i]%%2==0){
    print(v1[i]*2)
  }else{
    print(v1[i]+2)
  }
}

sum <- 0
for(i in 1:100){
  sum <- sum+i
}
print(sum)

i <- 1
while(i<=10){
  print(i)
  i <- i+1
}

subset(iris, Sepal.Length>=5.0&
         Sepal.Length<=6.0)[,1:2]

idx <- c()
for(i in 1:nrow(iris)){
  if(iris[i,"Sepal.Length"]>=5.0&
     iris[i,"Sepal.Length"]<=6.0){
    idx <- c(idx,i)
  }
}
print(idx)
iris[idx,c("Sepal.Length","Sepal.Width")]

