"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 03-09-2014

" 
# Read csv file
mydf <- read.csv('/home/rajaram/mysql-data/analysis/test', 
                 colClasses=c("integer", "integer", "integer"), header= T, fileEncoding= "windows-1252")

# Plot parameters
xLimit <- c(0, 10000)
dataSize <- c(500) # histrogram bin size
title <- c("overlappingConceptProfileStats")
xLabel <- c("concept profile length")
yLabel <- c("density")

# Get data from 'conceptProfileLength' column
conceptProfileLength <- mydf$overlappingConcepts
# Maximum profile length
maxLength <- max(conceptProfileLength)
# Profile median value
median_ <- median(conceptProfileLength)

hist(conceptProfileLength, prob=FALSE, xlim= xLimit,   col="black", 
     breaks=dataSize, main=title, xlab=xLabel, ylab=yLabel)

