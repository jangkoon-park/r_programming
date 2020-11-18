

vector("character" , length = 5)
vector("logical" , length = 5)
vector("numeric" , length = 10)



mymat <- matrix(1:12 , nrow = 3)

mymat


mymat[1,4] 
mymat[2,] 
mymat[2:3, 1:2] 


mydata.frame <- data.frame(v1= 1 , v2 = 1:5, v3= letters[1:5])
mydata.frame


mydata.frame$v3[1:2]

mylist <- list(a = c("sejong uni","bdMBA"),
               b = 1:10,
              c  = mydata.frame)


mylist$a[1]
mylist$c

## data view
head(ToothGrowth)
dim(ToothGrowth)
nrow(ToothGrowth)
ncol(ToothGrowth)
names(ToothGrowth)

ToothGrowth$dose
str(ToothGrowth)




install.packages("xlsx")


library(xlsx)
#자바 설치 

#install.packages("tidyverse")
ToothGrowth

write.csv(ToothGrowth , "ToothGrowth.csv",row.names = F)
mydf$나이



##r basic function
ToothGrowth

mean(ToothGrowth$len)
median(ToothGrowth$len)

mean(mydf$나이)
min(ToothGrowth$len)
max(ToothGrowth$len)
var(ToothGrowth$len)
sd(ToothGrowth$len)

rank(c(1,4,3,5))

quantile(ToothGrowth$len)
summary(ToothGrowth$len)
summary(ToothGrowth)
summary(mydf)


## 
seq(from = 1,to = 10 , by = 3)
seq(from = 1,to = 10 , length.out = 3)

dim(mydf)

seq_along(mydf)
seq_len(4)

## 
rep(c(1,3,5), times =2)        
rep(c(1:5), times =2)        

##랜덤으로 다섯개만 샘플링을 한다. replace 중복 가능
sample(x=1:10 , size = 5, replace=T)

sample(letters,10)

vec <- 1:10 
vec <= 3 | vec <= 5
vec <= 3 & vec <= 5
which(vec <= 3 & vec <= 5)
vec[vec <= 3]

v1 <- c(4,6,1,2)
sort(v1 ,decreasing = T)
order(v1)

ToothGrowth[which(ToothGrowth$supp == "VC"),]
cut(ToothGrowth$len,quantile(ToothGrowth$len),labels = c("c1","c2","c3","c4"))

score <- 40 
if (score >= 50) {
  print("커요")
}  else  {
  print("작아요요")
}


for (i in 1:10){
  print(i)
}

plot(cars)
boxplot(len ~ supp, data = ToothGrowth)




