#' Function median returns the middle element of array if it's odd
#' and arithmetical mean (average) of two middle elements if array is even.
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @return number

source("stdlib.R")
source("mean.R")

SoenMedian <- function(array){
  l <- len(array)
  if(l == 0){
    return("Empty array")
  }
  if(l == 1){
    return(array[l])
  }
  array <- SoenSort(array)
  if (l%%2 == 0){
    d <- mean(c(array[l/2],array[l/2+1]))
  } else {
    d <- array[l/2+0.5]
  }
  
  return(d)
}
