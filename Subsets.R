#Subset

mtcars

#using subset
newdata=subset(mtcars,mpg>=20 & mpg<30,select=c(mpg,disp))
newdata

#using subset function
names(mtcars)
head(mtcars)
newdata=subset(mtcars, cyl==6 & disp>150,select=mpg:wt)
newdata
