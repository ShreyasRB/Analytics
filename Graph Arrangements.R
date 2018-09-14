hist(mtcars$mpg)
hist(mtcars$wt)

par(mfrow=c(1,2)) #1 row 2column disply
hist(mtcars$mpg)
hist(mtcars$wt)

par(mfrow=c(2,1))
hist(mtcars$mpg)
hist(mtcars$wt)


par(mfrow=c(2,2))
hist(mtcars$mpg)
hist(mtcars$wt)
pie(table(mtcars$cly))
hist(mtcars$hp)
