"
@author Eelke van der horst
@author Mark thompson
@author Rajaram Kaliyaperumal

@version 0.1
@since 18-09-2014

" 
# Read csv file
mydf <- read.csv('/home/rajaram/mysql-data/python-data/test-matchscores-cpLength-10columns', 
                 colClasses=c("double", "double", "double", "double", "double","double", "double", "double", "double", "double"), header= T, fileEncoding= "windows-1252")
data <- log(mydf)

# Plot parameters
yLabel <- c("log(matchscore)")
title <- c ("Sorted by gene CP length")

#png("/tmp/myplot.png", width=10, height=8, units="in", res=300)
boxplot(data)
title(title, ylab=yLabel)
#dev.off() #only 129kb in size