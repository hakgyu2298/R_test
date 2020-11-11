a <- 10
if(a>5){
  print(a)
}else{
  print(a*10)
  print(a/10)
}

a <- 10
b <- 20
if(a>5 & b>5){
  print(a+b)
}
if(a>5|b>30){
  print(a*b)
}

a <- 10
b <- 20
ifelse(a>b,c <- a,c <- b)
c

a <- 10
b <- 20
if(a>b){
  c <- a
}else{
  c <- b
}
c
