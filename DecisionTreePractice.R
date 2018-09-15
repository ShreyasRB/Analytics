#Decision Tree: Predict Probability of Selection 

df =  read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")

## view the first few rows of the data
head(df)
sum(is.na(df))

## two-way contingency table of categorical outcome and predictors we want to make sure there are no empty cells
xtabs(~admit + rank, data = df)

#convert rank into factors
df$rank = factor(df$rank)
df$admit = factor(df$admit)
dim(df)
summary(fit3)
dtree3=rpart(admit~gre+gpa+rank,data=df)
#Print tree


dtree4=rpart(admit~ ., df)
dtree4
rpart.plot(dtree4)

#Print cp table

printcp(dtree4)

#Prune the tree
ptree3=prune(dtree4,cp=0.023622)
rpart.plot(ptree3)

#Predict the class for any sample value
library(dplyr)
(ndata=sample_n(df,3))
predict(ptree3, newdata=ndata,type='class')
