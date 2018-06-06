#' Function return the deviation of an array
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @return number

source("stdlib.R")
source("mean.R")

SoenDeviation <- function(array){
  l <- len(array)
  if (l == 0) {
    return("Empty array")
  }
  if (l == 1) {
    return("Now enough data")
  }
  mu <- SoenMean(array)
  omega <- 0
  
  for (elem in array) {
    omega <- omega+(elem-mu)^2
  }
  omega <- omega/l
  omega <- SoenSqrtA(omega)
  return(omega)
}
