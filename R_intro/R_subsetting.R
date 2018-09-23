## https://www.dropbox.com/s/dzcfgdofn1v1i5j/R_subsetting.R?dl=0

## DATA FRAME:
myorder_df=data.frame(element_1,element_2,element_3)
myorder_df
dim(myorder_df)
str(myorder_df)

#subsetting
#pos index
v<-c(1:10)
v[2]
v[c(3:6)]
v[-c(3:6)]
v[3:6]

myorder_df[1]
myorder_df[[1]]
typeof(myorder_df[1])
typeof(myorder_df[[1]])

myorder_df[1:3,]

#subsetting by name
myorder_df $element_1

#subsetting by logical operators
# >
# <
# ==
# >=
# <=

v<-c(5,1,3,4,5)
v[v==5]
v==5
df1<-myorder_df[myorder_df$element_2=="solid",]
df1

df2<-myorder_df[myorder_df$element_3>3,]
df2

df3<-myorder_df[myorder_df$element_2=="solid"]
df3

myorder_df$element_2=="solid"


getwd()

##GapMinder dataset
mydata <-read.table("Data/gapminder.txt")
mydata

str(mydata)

#rows are observations and cols are variables

typeof(mydata)
typeof(mydata$V2)

mydata
mydata[c(3,5)]

mydata[,c(3,5)]

unique(mydata$V1)


