#data frame

#rollno,name,batch,gender,marks,marks2

rollno=1:30
name=paste('student',1:30,sep='-')
?paste
name
batch=sample(c(2016,2017,2018),size=30,replace=T)
batch
table(batch)
gender=(c('M','F'))

marks1=rnorm(30,mean=65,sd=7)
marks2=rnorm(30,mean=60,sd=10)
marks1
marks2

df=data.frame(rollno,name,batch,gender,marks1,marks2,stringasfacotrs=F)
?data.frame
summary(df)
df$name
df$gender
df$gender=factor(df$gender)
str(df)
df$batch=factor(df$batch,ordered=T,levels=c('2016','2017','2018'))
str(df)

df$roll=as.character(df$rollno)
summary(df)
head(df,n=2)
tail(df)
dim(df)
nrow(df)
ncol(df)
names(df)
df[1,1:4]
df[1:2,1:4]
df[c(1,3),c(1,4,5,6)]
df[df$gender=='M',3:5]   #males:display 3 to 5 column

df[df$gender=='M' & df$marks1>30,3:5]  #males:display gender and marks
length(df)
nrow(df[df$gender=='M',])

#sort
sort(df$marks1)
marks1
order(df$marks1) #shows loc of elements

df[order(df$marks1),]
sort(df$marks1)
rev(sort(df$marks1))
df[order(df$gender,df$batch),]

#summary/aggerating

aggregate(df$marks1,by=list(df$batch),FUN=mean)
aggregate(marks1~batch,data=df,FUN=mean)
aggregate(cbind(marks1,marks2)~batch,data=df,FUN=mean)

aggregate(cbind(marks1,marks2)~batch+gender,data=df,FUN=mean)    #Organises by gender


aggregate(cbind(marks1,marks2)~gender+batch,data=df,FUN=mean)  #Organises by batch

?as.character
df
write.csv(df,"./data/bitsgoa.csv")
d3=read.csv("./data/bitsgoa.csv")
d3

