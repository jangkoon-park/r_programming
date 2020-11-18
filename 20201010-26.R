par()


op <- par(no.readonly = T)

par(mfrow = c(1,1))

plot(cars)
boxplot(cars)

View(op)

############################################################
par(op)
par (mfrow = c(2,2) ,oma = c(3,3,3,0))

plot(1,1 , xlab="" , ylab="",  type ="n")
plot(1,1 , xlab="" , ylab="",  type ="n")
plot(1,1 , xlab="" , ylab="",  type ="n")
plot(1,1 , xlab="" , ylab="",  type ="n")

mtext(text = "x lable",side = 1, outer = T)
mtext(text = "y lable",side = 2, outer = T)
mtext(text = "main title",side = 3, outer = T)

########################################################
mat <- matrix(c(1,2,0,3), nrow =2)
layout.1 <- layout(mat,widths = c(3.5,1),heights = c(1,3))
layout.show(layout.1)

x <- rnorm(100)
y <- rnorm(100)

par (oma = c(0.5,0.5,2,0.5))
par (mar = c(2.5,4.5,0.5,0.5))
boxplot(x,horizontal = T,axis=F)

par (mar = c(4.5,4.5,0.5,0.5))
plot(x,y)

par (mar = c(4.5,4.5,0.5,0.5))
boxplot(y,axis=F)


mtext("Title of laout" , side = 3 , cex=2,outer = T ,col= "blue")


##############################################################
par(op)

par(mfrow = c(2,2))
plot(cars)
plot(cars)
plot(cars)
plot(cars)


###########################################################

plot(iris)
par(op)
par(mfrow = c(2,2))
par(mar = c(5.1,5.1,4.1,2.1))
plot(Sepal.Width ~ Sepal.Length,data = iris)



mytable <- table(mtcar$vs,mtcars$am,dnn = c("vs","am"))
barplot(mytable,beside=T, main = "Vs vs Am" , xlab= "AM" , ylab = "Frequency",
        names.arg = c("automatic","manual"), legend.text= c("v-shapd","Straight")
        ,args.legend = list( x="topright"))


hist(mtcars$mpg,nclass=20,col=rainbow(n=20),main="Historgram of mpg"
     , xlab = "mpg" , freq = F)

mydensity <- density(mtcars$mpg)

lines(mydensity,col= "red",lwd=)

c1 <- rainbow(n=3)
c1 <- rainbow(n=3,alpha=0.6)
c1 <- rainbow(n=3,v=0.7)
boxplot(len ~ dose, data = ToothGrowth, main= "Length ~dose"
        ,xlab="Dose",ylab= "Dental Length" ,col =c2,whiskcol = c1,medcol =c1
        , staplecol =c2)
stripchart(len ~ dose, data = ToothGrowth, vertical = T, method = "jitter"
          ,pch=21, col = c1[1],add=T)


png("mybasic+_plot")

hist(airquality$Ozone)


br_point <- seq(from = 0, to = 200, length.out = 21)
hist(airquality$Ozone, breaks = br_point)



hist(airquality$Ozone, breaks = br_point, freq = T,
     density = 30, angle = 45, col = c(1:10) )



hist(airquality$Ozone, breaks = br_point, freq = T,
     angle = 45, col = rainbow(15, alpha = 0.7),
     border = "black",  labels = TRUE,
     xlim=c(0,200), ylim=c(0,30),
     main = "Ozone level in New York",
     xlab = "Ozone")

