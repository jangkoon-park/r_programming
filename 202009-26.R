str(cars)

plot(dist ~ speed, data =cars, main="Speed vs dist"
     ,xlab="speed",ylab="Dist",cex=3 ,pch = 19,  cex.main= 2, cex.lab= 1.5,cex.axix
     =1.2, col.main="red",col.lab="magenta", col.axis= "green")



lm.result <- lm(dist ~ speed ,data = cars)
abline(lm.result, col="red" ,lwd=2)


library(RColorBrewer)
display.brewer.all()
mycolor <- brewer.pal(n=4,name="accent")

mycolor[2]

text(10,115,labels = "distace = 1123123123",font=3,cex=1.3)



plot(Sepal.Width ~ Sepal.Length, data =iris, main="Width vs Length"
     ,xlab="Length",ylab="Width",cex=2 ,pch = 19,  cex.main= 2,col=Species
     , cex.lab= 1.5,cex.axix
     =1.2, col.main=mycolor[2],col.lab=mycolor[3], col.axis= mycolor[4]
     ,font.main =4 ,font.lab =3 )


lm.result2 <- lm(Sepal.Width ~ Sepal.Length ,data = iris)
abline(lm.result2, col="red" ,lwd=2)
# text(7,4,labels = "distace = 1123123123",font=3,cex=1.3)

names(iris)

legend("topright",legend = levels(iris$Species), col= 1:3,pch=19 )

levels(iris$Species)

mymat <- matrix(c(8,5,12,4),nrow=2)
barplot(mymat,beside =T)


mytable <- table(mtcars$vs,mtcars$am,dnn=c("Engin","Transmission"))


mybar <- barplot(mytable,beside =T, main= "Engine vs Transmission" 
        ,ylab="ºóµµ¼ö" 
        , names.arg=c("Automatic","Manual")
        ,legend.text=c("V-shaped","Straight")
        ,args.legned=list(x="topright")
        ,xlab="Transmission",cex.main=2 , cex.lab= 1.5
        ,col.main="red",col.lab="blue",col.axis="green",ylim=c(0,14))

# text(x= c(1.5,2.5,4.5,5.5) ,y= c(12,7,6,7) ,labels = c(12,7,6,7),pos=3 
#      )
text(x= mybar ,y= mytable ,labels = mytable,pos=3 
)

pie(rep(1,8),col=rainbow(n=10 ,alpha=0.6), clockwise = T ,main="color")

pie(rep(1,8),col=heat.colors(n=10 ,alpha=0.6), clockwise = T ,main="color")

pie(rep(1,8),col=topo.colors(n=10 ,alpha=0.6), clockwise = T ,main="color")

hist(cars$dist)



boxplot(ChickWeight$weight ~ ChickWeight$Diet
        ,range = 1.5,outline = T
        ,pars = list(boxwex = 0.9 ,staplewex =0.1)
        ,ylab="Weight(kg)",main="chicken weight")



c1 <- rainbow(n = 3)
c2 <- rainbow(n = 3,alpha=0.6)
c3 <- rainbow(n = 3, v = 0.7 )

boxplot(len ~ dose*supp, data=ToothGrowth,main = "Tooth grouth"
        ,xlab= "Dose x supp",ylap = "Toothlength"
        ,col = c2,medcol = c3,whiskcol = c1,staplcol = c3
        , boxcol=c3, outcol = c3)

stripchart(len ~ dose*supp, data=ToothGrowth,vertical = T,method="jitter"
           ,pch=21,col= c1[1],add=T)

