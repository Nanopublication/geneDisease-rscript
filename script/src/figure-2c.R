"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 19-09-2014

" 
library(lattice)
library(latticeExtra)

# Read csv file
mydf <- read.csv('/home/rajaram/eelke_pc/Meuk/cpgp/results/analysis2/diseasesConceptProfileStats', 
                 colClasses=c("integer", "integer", "integer"), header= T, fileEncoding= "windows-1252")

# Get data from 'noOfPMids' column
abstracts <- log(mydf$noOfPMids)
# Get data from 'conceptProfileLength' column
cpLength <- log(mydf$conceptProfileLength)

# Plot parameters
xLabel <- c("log(no.of abstracts)")
yLabel <- c("log(concept profile length)")
title <- c ("Fig 2c (disease)")

xyplot(cpLength ~ abstracts, grid = TRUE, 
       type = c("p", "smooth"), col.line = "red", 
       col="black", pch="*", lwd = 3, main = title, xlab=xLabel, ylab=yLabel)