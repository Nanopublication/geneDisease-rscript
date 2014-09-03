genedf <- read.csv('/home/rajaram/eelke_pc/results/analysis2/geneConceptProfileStats', header= T, fileEncoding= "windows-1252")

diseasedf <- read.csv('/home/rajaram/eelke_pc/results/analysis2/diseasesConceptProfileStats', header= T, fileEncoding= "windows-1252")
columnNames <- colnames(diseasedf, do.NULL = TRUE, prefix = "col")


str(columnNames[0])

xLimit <- c(1.5, 5)
yLimit <- c(0, 6)
title <- c("geneConceptProfileStats")
xLabel <-c("cpLength")
yLabel <-c("abstract")
pointWidth <- c(0.1)
markerStyle <- c(19)

plot(log10(genedf$conceptProfileLength), log10(genedf$NoOfPMids4Gene), main=title, xlab=xLabel, ylab=yLabel, xlim=xLimit, ylim=yLimit, pch=markerStyle, lwd=pointWidth)

points(log10(diseasedf$conceptProfileLength), log10(diseasedf$NoOfPMids4Disease), col="grey", pch=markerStyle, lwd=pointWidth)
