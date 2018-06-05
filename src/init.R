# main file to call all the functions
# Author: Dmitry Kryukov

source("stdlib.R")
source("min.R")
source("max.R")
source("mode.R")
source("median.R")
source("mean.R")
source("deviation.R")

array <- c(1,1,3,4,2,1,3,2,1)
print(paste0("Min: ", SoenMin(array)))
print(paste0("Max: ", SoenMax(array)))
print(paste0("Mode: ", SoenMode(array)))
print(paste0("Median: ", SoenMedian(array)))
print(paste0("Mean: ", SoenMean(array)))
print(paste0("Deviation: ", SoenDeviation(array)))
