#matrices

x=c(1:12)
?matrix
m1=matrix(c(1:12),nrow=3)
m1
?runif
marks3=runif(30,50,100)
marks3
m2=matrix(marks3,nrow=6)
m2
m3=matrix(marks3,nrow=6,byrow=T)
m3

#summary
colSums(m3)
rowSums(m3)
colMeans(m3)
rowMeans(m3)
sum(m3)
m3[m3>70]
m3[1,]
m3[,3]
m3
m3[3,1]
