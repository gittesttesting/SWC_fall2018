print("wow")
#Building blocks of R

#variable/objects
#operator <-

name <-"Jane"
name
print(name)
price<-3.99
price

#list of objects
ls()

#remove all objects
rm(list=ls())

mass <-64
mass
sqrt(mass) # function with argument provided

res<-sqrt(mass)
res

getwd() # get current working directory

?plot #for getting help
help

mass <-47.5
age <-122
height <-150

mass<-mass*2.3
mass
age<-age-20
age
height<-height+20
height

#install packages and load it to R library
install.packages("knitr")
library(knitr)

#data types and data structures
#single element data structures : smalles units in R
age<-45
length(age)
str(age)

score<-79
is.integer(score)
typeof(score)
typeof(is.integer(score)) #nested functions

is.logical(is.numeric(typeof(is.integer(score))))

#data structure with multiple elements
#vector : collection of element of the same type
#how to create a vetor ?
#c(): concatenata function

v<-c(1,2,3,45)
v
v<-c(1:10,100)
v
length(v)
str(v)

#view parts of data / vector
head(v,n=2)
tail(v,n=3)

#manipulate
v1<-2*v
v1

#add a vector
#let's create v2 and add v2 to v1
v2 <- c(1:5)
v2

v3<-v1+v2
v3

#character vector
v4<-c("Jane","John","Farah")
v4
typeof(v4)

#change data type
v3<-as.character(v3)
v3
typeof(v3)
str(v3)

#matrices,factors,list
#matrices : 2d vectors
# 3 - rows,6-cols
m<-matrix(c(1:18),3,6)
m
dim(m)

#factors
#special vectors used to represent categorical data
#use factor function
continent <-factor(c("Asia","America","Europe"))
continent
str(continent)

#Lists : generic vector collection of elements with diff data types - numbers and char
l<-list("Afghanistan","Albania",1952,876897)
l
typeof(l)
str(l)

element_1<-c("chicken","soup","salad","tead")
element_1
element_2<-factor(c("solid","liquid","solid","liquid"))
element_2
element_3<-c(4.99,2.99,3.29,1.89)
element_3
myorder<-list(element_1,element_2,element_3)
myorder

#dataframe is a list of vectors with equal length
myorder_df=data.frame(element_1,element_2,element_3)
myorder_df
dim(myorder_df)
str(myorder_df)
