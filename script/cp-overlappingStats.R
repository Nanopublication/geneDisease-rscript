"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 03-09-2014

" 
#overlapping stats file
mydf <- read.csv('/home/rajaram/eelke_pc/Meuk/cpgp/results/analysis2/geneConceptProfileStats', 
                 colClasses=c("integer"), header= T, fileEncoding= "windows-1252")

# Get data from 'conceptProfileLength' column
conceptProfileLength <- mydf$conceptProfileLength 

#Plot parameters
xLimit <- c(0, 10000)
dataSize <- c(500)
title <- c("geneConceptProfileStats")
pointWidth <- c(0.1)


maxLength <- max(conceptProfileLength)
# Find profles median value
medianScore <- median(conceptProfileLength)

print ("Median ===>")
print(medianScore)

print ("Max Length ===>")
print(maxLength)

png("/tmp/myplot.png", width=8, height=8, units="in", res=300)

hist(conceptProfileLength, prob=TRUE, breaks=dataSize,  col="black", main=title) # prob=TRUE for probabilities not counts

dev.off() #only 129kb in size