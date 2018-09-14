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


#BITS LM

#simple linear regression
#how Y depends on X
#women
women
str(women)
cov(women$height, women$weight)
cor(women$height, women$weight)
plot(women$height, women$weight)
#create Linear Model
fit1 = lm(weight~ height, data=women)
summary(fit1)
#weight = -87 + 3.45 * height
fitted(fit1)
cbind(women, fitted(fit1), residuals(fit1))
names(fit1)
(ndata1 = data.frame(height=c(62.5,63.5)))
predict(fit1, newdata=ndata1)
cbind(ndata1, predictWt=predict(fit1, newdata=ndata1))

#



#area vs sales


#Multiple Linear Regression
#mtcars : mpg vs wt, hp
names(mtcars)

fit2 = lm(mpg ~ wt + hp, data=mtcars)
summary(fit2)
range(mtcars$wt) ; range(mtcars$hp)
ndata2 = data.frame(wt=c(2,2,3), hp=c(57, 250,300))
predict(fit2, newdata=ndata2)
cbind(ndata2, predictMPG=predict(fit2, newdata=ndata2))
#
names(mtcars)
fit2a = lm(mpg ~ wt + hp + vs + am + gear, data=mtcars)
summary(fit2a)

#Tocheck for best varibles to select for linear modeling
#install.packages('olsrr')
library(olsrr)
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k <- ols_step_all_possible(model)
plot(k)
k
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))




#sales vs price & promotion


