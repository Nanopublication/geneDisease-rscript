"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 03-09-2014

" 
# Read csv file
mydf <- read.csv('/home/rajaram/eelke_pc/results/analysis2/geneConceptProfileStats', header= T, fileEncoding= "windows-1252")
#Plot parameters
xLimit <- c(0, 10000)
dataSize <- c(500)
title <- c("diseasesConceptProfileStats")

# Get data from 'conceptProfileLength' column
data = mydf$conceptProfileLength
# Find maximum profile length
maxLength <- max(data)
# Find profles median value
median_ <- median(data)

hist(data, prob=TRUE, xlim= xLimit,   col="black", breaks=dataSize, main="diseasesConceptProfileStats") # prob=TRUE for probabilities not counts

