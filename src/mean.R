# Function mean return the average of an array
# Author: Dmitry Kryukov

source("stdlib.R")

MeanF <- function(array){
  l <- len(array)
  mu <- 0
  if(l == 0){
    return("Empty array")
  }
  for(elem in array){
    mu <- mu+elem
  }
  mu <- mu/l
  return(mu)
}