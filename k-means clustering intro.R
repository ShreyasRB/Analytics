#k-means clustering inrto

age=ceiling(rnorm(3000,mean=22,sd=2))
marks=ceiling(rnorm(3000,mean=65,sd=10))

age
df=data.frame(age,marks)
km=kmeans(df,center=4)
km
km$withinss
km$tot.withinss

#between
km$betweenss
km$iter
km$centers

