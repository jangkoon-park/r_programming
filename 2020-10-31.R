library(tidyverse)
library(RColorBrewer)

mydf  <- diamonds %>% sample_frac(0.05)

p1 <- ggplot(mydf,aes(x = carat, y = price ,color = cut)) + 
  geom_point( size=8 ,shape = 19 , alpha= 0.2) +
  geom_smooth( method = "gam")


p2 <- p1 + 
  labs(title = "price vs Carat" , subtitle = "Diamonds data" 
       , x="carat" , y="price",caption = "sejong bdmba")

p3 <- p2 + scale_color_brewer(palette = "set1")+ xlim(c(0,2.5))


p4 <- p3 + theme_classic()

p4


## Bar plot

mydf2  <- diamonds %>% sample_frac(0.05)
ggplot(mydf2,aes(x=clarity)) +
  geom_bar(stat = "count",position = "stack")

mydf  <- diamonds %>% sample_frac(0.05)
ggplot(mydf,aes(x=clarity )) +
  geom_bar(stat = "count",position = "stack" , color ="blue" , fill = "steelblue") +
  coord_flip()


mydf4  <- diamonds %>% sample_frac(0.05)
ggplot(mydf4,aes(x=clarity,fill = cut )) +
  geom_bar(stat = "count",position = "dodge" ) +
  scale_x_discrete(labels = fruit[1:8])



mydf5  <- diamonds %>% sample_frac(0.05)
ggplot(mydf5,aes(x=clarity,fill = cut )) +
  geom_bar(stat = "count",position = "stack" ) +
  coord_flip()


mydf_byorder <- mydf %>% group_by(clarity) %>% count()

# mydf_byorder <- mydf_byorder %>% fct_reorder(clarity,n)

ggplot(mydf_byorder,aes(x=fct_reorder(clarity,n) , y=n))+
  geom_bar(stat = "identity") + coord_flip()


## histogram 
mydf7 <- diamonds %>% filter (cut == "Premium" | cut == "Ideal")
  ggplot(mydf7, aes(x=price,color=cut)) + 
  geom_histogram(aes(y = ..density..), bins = 30,  color = "blue" ,alpha = 0.4,position = "identity",fill = "white")+
  geom_density(size = 2) +
  scale_color_brewer(palette = "Set2") +
  theme(legend.position = "top") +
  scale_color_manual(values = c("red","blue"))


# 


