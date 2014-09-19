"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 03-09-2014

" 
# Read csv file
mydf <- read.csv('/home/rajaram/eelke_pc/Meuk/cpgp/results/analysis2/geneConceptProfileStats', 
                 colClasses=c("integer", "integer", "integer"), header= T, fileEncoding= "windows-1252")

#Plot parameters
xLimit <- c(0, 10000)
dataSize <- c(500)
title <- c("geneConceptProfileStats")
xLabel <- c("concept profile length")
yLabel <- c("density")

# Get data from 'conceptProfileLength' column
conceptProfileLength <- mydf$conceptProfileLength
# Find maximum profile length
maxLength <- max(conceptProfileLength)
# Find profles median value
median_ <- median(conceptProfileLength)

hist(conceptProfileLength, prob=TRUE, xlim= xLimit,   col="black", 
     breaks=dataSize, main=title, xlab=xLabel, ylab=yLabel) # prob=TRUE for probabilities not counts

