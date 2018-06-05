# Function deviation
# Author: Dmitry Kryukov

source("stdlib.R")
source("mean.R")

SoenDeviation <- function(array){
  l <- len(array)
  if (l == 0) {
    return("Empty array")
  }
  if (l == 1) {
    return("Too small data")
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