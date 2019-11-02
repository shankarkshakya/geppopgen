mydata<- read.csv("./npl-travel-distances-in-km-unrchc.csv", header = T, row.names = 1)
head(mydata)
mydistance <- dist(mydata)
head(mydistance)

library(ape)
#plot(nj(mydistance))


tree <- nj(mydistance)

tiff("ktmdistance.tiff", width = 7, height = 12, compression = "zip", res = 300, units = "in")
plot(root(tree, "Baitadi"))
dev.off()

