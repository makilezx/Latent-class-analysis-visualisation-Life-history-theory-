install.packages("haven", dependencies = T)
install.packages("mclust", dependencies = T)
install.packages("dplyr", dependencies = T)

library(haven)
library(dplyr)          
library(mclust)

dataset <- read_sav("...")


colnames(dataset)
LHT.sum <- subset(dataset, select = c(316:322))


colnames(LHT.sum)
describe(LHT.sum)


LHT.sum.mclust. <- Mclust(LHT.sum, g = 1:9)

print(LHT.sum.mclust_results$BIC)
print(LHT.sum.mclust_results$parameters)
print(LHT.sum.mclust_results$classification)

