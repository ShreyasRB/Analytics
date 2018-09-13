#vector
x=c(1,2,3)
x1=1:100000
length(x1)
x
x1
x2=seq(10,100,2)
x2
?seq

#numeric vector----



(marks=rnorm(n=30,mean=60,sd=10))
?rnorm

mean(marks)
median(marks)
sd(marks)
var(marks)
summary(marks)

#Properties of Vectors

length(marks)
str(marks)
class(marks)
hist(marks)
plot(density(marks))

#character vector----

names=c('ram','bob','robin')
length(names)
class(names)
summary(names)

gender=c('m','f')
summary(gender)
genderF=factor(gender)
summary(genderF)


grades= c('A','B','C','D','B')
gradesF = factor(grades,ordered=T)
summary(gradesF)
gradesF

gradesF1 = factor(grades,ordered=T,levels=c('D','B','A','C'))
gradesF1


table(gender)
barplot(table(gender))
pie(table(gradesF))


#locical vector----

married = c(TRUE, FALSE, T,F,T,F,T,T)
married
sum(married)
class(married)
summary(married)


#subset of marks
marks

trunc(marks); round(marks,1); floor(marks); ceiling(marks)
marks1=trunc(marks)
marks1
marks1[1]
marks1[1:5]
marks1[-2]
marks1[c(1,5,10)]

marks1[-c(1.10)]
mean(marks1[-c(1.10)])
marks1[marks1>60]
marks1>6
marks1[marks1>60&marks<70]

set.seed(1234)
gender2=sample(c('M','F'),size=30,replace=T,prob=c(.6,.4))
gender2
?sample
table(gender2)
prop.table(table(gender2))
table(gender2)
