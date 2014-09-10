"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 03-09-2014

" 
library(lattice)
# Read csv file
mydf <- read.csv('/home/rajaram/eelke_pc/Meuk/cpgp/results/analysis2/geneConceptProfileStats', 
                 colClasses=c("integer", "integer", "integer", "integer", "integer" ), header= T, fileEncoding= "windows-1252")
#Plot parameters
xLimit <- c(0, 10000)
dataSize <- c(500)
title <- c("diseasesConceptProfileStats")

# Get data from 'conceptProfileLength' column
conceptProfileLength <- mydf$conceptProfileLength
# Get data from 'noOfPMids' column
noOfAbstracts <- mydf$noOfPMids
# Find maximum profile length
maxLength <- max(conceptProfileLength)
# Find profles median value
median_ <- median(conceptProfileLength)

hist(conceptProfileLength, prob=TRUE, xlim= xLimit,   col="black", breaks=dataSize, main="overlappingConceptProfileStats") # prob=TRUE for probabilities not counts

plot(noOfAbstracts, conceptProfileLength, type="l", main="Fig 2c") 

xyplot(conceptProfileLength ~ noOfAbstracts, grid = TRUE, type = c("p"))

#  xyplot(log10(conceptProfileLength) ~ log10(noOfAbstracts), grid = TRUE,  
#         type = c("p", "smooth"), col.line = "darkorange", lwd = 3)

# xyplot(conceptProfileLength ~ noOfAbstracts,
#        grid = TRUE,
#        scales = list(x = list(log = 10, equispaced.log = FALSE)),
#        type = c("p", "smooth"), col.line = "darkorange", lwd = 3)
