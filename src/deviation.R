# Function deviation
# Author: Dmitry Kryukov

source("stdlib.R")
source("mean.R")

DeviationF <- function(array){
  l <- len(array)
  if(l == 0){
    return("Empty array")
  }
  mu <- MeanF(array)
  omega <- 0
  
  for(elem in array){
    omega <- omega+(elem-mu)^2
  }
  omega <- omega/l
  omega <- sqrtFB(omega)
  return(omega)
}