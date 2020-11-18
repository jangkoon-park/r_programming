print(123)


#plot(price - carat, data=diamonds)


# diamonds_df <- ggplot()
# 
# plot
library(ggplot2)
library(dplyr)


set.seed(123)
mydf <- slice_sample(diamonds, prop=0.005)

ggplot() + geom_point(data = mydf, aes(x=carat,y=price,color=cut)
                      ,size = 6, alpha=0.4,shape=19) +
  geom_smooth(data = mydf, aes(x=carat, y=price, color=cut,fill=cut)
              , method="lm" , color="blue",se =F, alpha=0.4)




?mtcars


ggplot() + geom_point(data = mtcars, aes(x=wt,y=mpg,color=as.factor(cyl))
                      ,size = 6, alpha=0.4,shape=19) +
  geom_smooth(data = mtcars, aes(x=wt, y=mpg, color=as.factor(cyl),fill=as.factor(cyl))
              , method="lm" , color="blue", alpha=0.4,method="lm")


library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(plotly)
mydf <- slice_sample(diamonds, prop=0.005)
p1 <- ggplot(data = mydf, aes(x=carat,y=price,color=cut)) + geom_point(
                      size = 6, alpha=0.4,shape=19) +
  geom_smooth(method="lm"  ,se =F, alpha=0.2) +
  labs(title="Diamond",subtitle = "diamonds data",
                                      x="carat ()",y="price ($)",caption = "weight of the diamond (0.2.5.01)")

p2 <- p1 + scale_color_brewer(palette = "Set3")
plot(p2)

p3 <- p2 + scale_x_continuous(breaks = seq(0.5,2.0,by=0.2)) + scale_y_continuous(breaks = seq(0,8000,by=500))+ theme_classic()
plot(p3)

p4 <- p3 + theme(legend.position = "none")
plot(p4)

ggplotly(p4)



