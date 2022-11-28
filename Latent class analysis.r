install.packages("haven", dependencies = T)
install.packages("mclust", dependencies = T)
install.packages("dplyr", dependencies = T)

library(haven)
library(dplyr)          
library(mclust)

colnames(dataset)
LHT.sum <- subset(dataset, select = c(316:322))

colnames(LHT.sum)
describe(LHT.sum)


LHT.sum.mclust. <- Mclust(LHT.sum, g = 1:9)
summary(LHT.sum.mclust.)
LHT.sum.mclust.$bic
LHT.sum.mclust.$parameters
LHT.sum.mclust.$classification

matrica.sum.klase.LHT <- cbind(LHT.std, LHT.sum.mclust.$classification)
colnames(matrica.sum.klase.LHT)
describe.by(matrica.sum.klase.LHT, group = LHT.sum.mclust.$classification)
