install.packages('amap')   #for install of new package

library(amap)
library(dplyr)  #For loading package for using
mtcars

mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg)) #WIll show only specified tables when summarise is used instead of summarise_all


mtcars %>% group_by(gear) %>% summarise_all(mean)
mtcars %>% group_by(gear) %>% summarise_all(max)  

?summarise
mtcars %>% select(mpg,gear) %>% filter(mpg>25)

mtcars %>% group_by(gear) %>% summarise_if(is.numeric,mean) #Will summarise by mean if value is numeric in value

sales %>% group_by(region) %>% summarise_if(is.numeric,mean) #Displays mean of all unique regions if numeric in value

?is.numeric

sales %>% group_by(region)
?count
mtcars %>% group_by(gear) %>% summarise(n=n()) #Used to show no.of units in given group by topic

?head
mtcars %>% group_by(gear)

mtcars %>% group_by(gear) %>% summarise(TotalMiles=sum(mpg)) #Will show total miles covered by certain gear

