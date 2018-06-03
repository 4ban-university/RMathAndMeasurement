# main file to call all the functions
# Author: Dmitry Kryukov

source("stdlib.R")
source("min.R")
source("max.R")
source("mode.R")
#source("median.R")
#source("mean.R")
#source("deviation.R")

array <- c(1,2,3,4,5,6,5,7,8,9)
print(paste0("Min: ", MinF(array)))
print(paste0("Max: ", MaxF(array)))
print(paste0("Mode: ", ModeF(array)))