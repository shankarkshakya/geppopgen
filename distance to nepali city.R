mydata<- read.csv("./npl-travel-distances-in-km-unrchc.csv", header = T, row.names = 1)
head(mydata)
mydistance <- dist(mydata)
head(mydistance)


plot(nj(mydistance))


tree <- nj(mydistance)

plot(root(tree, "Baitadi"))


