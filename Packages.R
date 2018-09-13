install.packages('amap')   #for install of new package

library(amap)
library(dplyr)  #For loading package for using
mtcars

mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg))


mtcars %>% group_by(gear) %>% summarise_all(mean)
mtcars %>% group_by(gear) %>% summarise_all(max)  #For displaying what gears have mpg>25

mtcars %>% group_by(mpg,gear) %>% summarise(max(mpg)>25)
?summarise
mtcars %>% select(mpg,gear) %>% filter(mpg>25)
