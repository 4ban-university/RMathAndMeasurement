# Function median returns the middle element of array if it's odd
# and mean of two middle elements of even.
# Author: Dmitry Kryukov

source("stdlib.R")
source("mean.R")

SoenMedian <- function(array){
  l <- len(array)
  if(l == 0){
    return("Empty array")
  }
  array <- SoenSort(array)
  if (l%%2 == 0){
    d <- mean(c(array[l/2],array[l/2+1]))
  } else {
    d <- array[l/2+0.5]
  }
  
  return(d)
}
