#Linear Regression

women
cor(women$height,women$weight)
plot(women$height,women$weight)

#Create Linear model
fitl=lm(weight~height,data=women)
?lm
summary(fitl)
#weight=-87.51+3.45*height=from graph y=mx+c.Info obtained from summary function

#For Residual Values 

fitted(fitl)
cbind(women,fitted(fitl),residuals(fitl))  #How to fimd residual=2 and 3 column diff

names(fitl)

ndata1=data.frame(height=c(62.5,63.5))
predict(fitl,newdata=ndata1)

#Multiple Linear regression
#mtcars:mpg vs wt,hp

names(mtcars)

fit2=lm(mpg~wt+hp,data=mtcars)
summary(fit2)
?lm
?predict
range(mtcars$wt) : range(mtcars$hp)

ndata2=data.frame(wt=c(2,2,3),hp=c(57,250,300))
predict(fit2,newdata=ndata2)
