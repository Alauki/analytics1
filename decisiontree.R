#Decision tree

library(rpart) #doing classification
library(rpart.plot) #visualising the tree


#Dataset
str(iris)
head(iris)
summary(iris)
names(iris)
#classification tree
summary(iris)
set.seed(1234)
#Predict Species
ctree = rpart(Species ~ ., method='class', data=iris) #same as the one belpw, instead of typing evey category just put a dot .
ctree = rpart(Species ~ Petal.Length + Petal.Width + Sepal.Length + Sepal.Width, method='class', data=iris)
ctree
rpart.plot(ctree)
rpart.plot(ctree, main='classification Tree', nn=T, type=4, extra=104, cex=1.2)

printcp(ctree)

ctreeprune = prune(ctree, cp=0.44)
ctreeprune
rpart.plot(ctreeprune, main='clasifcation Tree', nn=T, type=4, extra=104)

#Regression Tree - Predict COntinuous Value Length









