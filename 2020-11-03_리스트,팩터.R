member <- list(name="kim",address="Pusan",tel="010-1234-5678",
               age=20,married=FALSE)
member

member[[3]] #list 에서 요소값을 불러올때 [[]]
member$name

blood.vector <- c("A","A","AB","O","B")
blood.vector
blood.type <- factor(c("A","A","AB","O","B"))
blood.type
is.factor(blood.type)

blood.type[6] <- "D"
blood.type
as.numeric(blood.type)
levels(blood.type)
levels(blood.type)[2]
