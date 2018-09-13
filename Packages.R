install.packages('amap')   #for install of new package

library(amap)
library(dplyr)  #For loading package for using
mtcars

mtcars %>% group_by(gear) %>% summarise(mean(mpg),max(mpg))


mtcars %>% group_by(gear) %>% summarise_all(mean)
