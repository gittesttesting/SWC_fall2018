# set working dir
setwd("C:/Users/Parthasarathy/Desktop/SWC_fall2018")

#install ggplot2
install.packages("ggplot2")

#load dependencies
library(ggplot2)

# read input dataset
gapminder <- read.table(file="Data/gapminder.txt",header = TRUE)

#make first ggplot2
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) +
  geom_point()

#challenge 1 : make a figure of how life expectancy changes over time
ggplot(data=gapminder,aes(x=year,y=lifeExp)) + geom_point()

#change colors of plots
ggplot(data=gapminder,aes(x=year,y=lifeExp,color=continent)) + geom_point()

#change it to line
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent)) + geom_line(aes(color=continent)) +
geom_point()

#reverse the order of line/point layers
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent)) + geom_point() + geom_line(aes(color=continent)) 

#statistics
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+ geom_point() + scale_x_log10()+ geom_smooth(method="lm",size=5)


#modify the size and color of points
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+ geom_point(size=2,color="green") + scale_x_log10()+ geom_smooth(method="lm",size=5)

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,color=continent))+ geom_point(size=3,shape="circle") + scale_x_log10()+ geom_smooth(method="lm",size=5)

starts.with <-substr(x=gapminder$country,start=1,stop=1)
az.countries <- gapminder[starts.with %in% c("A","Z"),]

ggplot(data=az.countries,aes(x=year,y=lifeExp,color=continent)) + geom_line() + facet_wrap(~country)

# labs = labels
ggplot(data=az.countries,aes(x=year,y=lifeExp,color=continent)) +
  geom_line()+facet_wrap(~country)+ labs(x="Year",y="Life Expectancy",title="Figure 1",color="Continent")+
  theme(axis.text.x=element_blank(),axis.ticks.x=element_blank())

ggplot(data=gapminder,aes(x=gdpPercap, y=..scaled.., fill=continent)) +geom_density(alpha=0.6)+facet_wrap(~continent) 

+ scale_x_log10()
                                                                                              