#' Main file to call all the functions
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @param SoenMin() The minimum function
#' @param SoenMax() The maximum function
#' @param SoenMode() The Mode function
#' @param SoenMedian() The median function
#' @param SoenMean() The mean function
#' @param SoenDeviation() The deviation function
#' @return number, array

source("stdlib.R")
source("min.R")
source("max.R")
source("mode.R")
source("median.R")
source("mean.R")
source("deviation.R")

array <- c(8,2,2)
print(paste0("Min: ", SoenMin(array)))
print(paste0("Max: ", SoenMax(array)))
print(paste0("Mode: ", SoenMode(array)))
print(paste0("Median: ", SoenMedian(array)))
print(paste0("Mean: ", SoenMean(array)))
print(paste0("Deviation: ", SoenDeviation(array)))
