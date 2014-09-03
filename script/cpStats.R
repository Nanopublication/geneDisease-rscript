mydf <- read.csv('/home/rajaram/eelke_pc/results/analysis2/geneConceptProfileStats', header= T, fileEncoding= "windows-1252")

xLimit <- c(0, 10000)
dataSize <- c(500)
title <- c("diseasesConceptProfileStats")

data = mydf$conceptProfileLength

maxLength <- max(data)

median_ <- median(data)

hist(data, prob=TRUE, xlim= xLimit,   col="black", breaks=dataSize, main="diseasesConceptProfileStats") # prob=TRUE for probabilities not counts

