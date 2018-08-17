#clustering IRIS

head(iris)
str(iris$Species)
table(iris$Species)
irisFeatures = iris[,-5]
head(irisFeatures)
iriskm1 = kmeans(irisFeatures,centers=3)
iriskm1
iriskm1$centers
colMeans(irisFeatures[iriskm1$cluster==1,])
iriskm1$iter


(iris[iriskm1$cluster==1,])

iriskm1$size #no of rows in each cluster
iriskm1$cluster #row no to cluster
plot(irisFeatures$Sepal.Length, col=iriskm1$cluster)
plot(irisFeatures$Sepal.Length, col=1:3)



#optional no of clusters in data
#reduce total within ss

library(NbClust)

data = iris[-5]
head(data)
km1=kmeans(data,centers = 1)
km1$tot.withinss

km2=kmeans(data,centers = 2)
km2$tot.withinss
km2$withinss

km3=kmeans(data,centers = 3)
km3$tot.withinss
km3$withinss

km4=kmeans(data,centers = 4)
km4$tot.withinss
km4$withinss

km5=kmeans(data,centers = 5)
km5$tot.withinss
km5$withinss

#selecting the number of custers
library(NbClust)
nc = NbClust(data, distance = "euclidean", min.nc=2, max.nc=15, method="average")


#another data set-mtcars
names(mtcars)
data2 = mtcars[c('mpg','disp','hp','wt')]
nc = NbClust(data2, distance = "euclidean", min.nc=2, max.nc=15, method="average")
det(as.matrix(mtcars))
?na.action
km3=kmeans(data,centers=3)
km3$tot.withinss
