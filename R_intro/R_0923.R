setwd("~/Desktop/SWC_fall2018")

x<-sqrt(64)
x

fahr_to_Kelvin <- function(temp){ #function
  kelvin<-((temp-32)*(5/9))+273.15
  kelvin
}

fahr_to_Kelvin(32)

print(paste('Boiling point of water:',fahr_to_Kelvin(212))) #paste - concatenate string

kelvin_to_celsius <- function(tmp)
{
  celsius <-tmp-273.15
  celsius
}

print(paste('Absolute zero in celsius:',kelvin_to_celsius(0)))
            

fahr_to_celsius<-function (temp){
  temp_k<-fahr_to_Kelvin(temp)
  result<-kelvin_to_celsius(temp_k)
  result
}

print(paste("Freezing point of water in celsius", fahr_to_celsius(32.0)))

 fence<-function(original,wrap){
  ans<-paste0(wrap,original,wrap)
  return (ans)
 }
print(fence('Original','******')) 

# file location
fh <- 'Data/gapminder.txt'

# read it
gm <- read.table(fh,header = TRUE)

#select the rows for the country Albania and store it
albdata<-gm[gm$country=="Albania",]

#select the column for gdp from albaniadata
albgdp<-albdata$gdpPercap

# compute the avg gdp for the country over the years
albavggdp <- mean(albgdp)

print(paste('The average gdp for Albania is :' ,albavggdp))


#clear old vars
#rm(list=ls())

#write function to return avg gdp for a given country

getavggdppercapita <- function(country,gm){
  #select the country from the given dset
  countrydata<-gm[gm$country==country,"gdpPercap"]  
  # compute the mean from it
  mean(countrydata)
}

gdpusa <-getavggdppercapita("United_States",gm)
gdpcanada <-getavggdppercapita("Canada",gm)
gdpmexico<-getavggdppercapita("Mexico",gm)

print (paste('GDP per cap of USA is',gdpusa))
print (paste('GDP per cap of Canada is',gdpcanada))
print (paste('GDP per cap of Mexico is',gdpmexico))
