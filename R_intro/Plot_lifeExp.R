# plotlifeexp.R

mydatafull<-read.table("Data/gapminder.txt",header = TRUE)


canada<-mydatafull[mydatafull$country=="Canada",]


png("canada.png")
plot(canada$year,canada$lifeExp,col="blue",type="l")

#close device
dev.off()


unique(mydatafull$country)
mydatafull[mydatafull$lifeExp<70,]
mydatafull