# Function mode returns the most frequent element of array
# Author: Dmitry Kryukov

source("stdlib.R")

ModeF <- function(array){
  if(len(array) == 0){
    return("Empty array")
  }
  sorted <- sortB(array)
  max.counter <- 1
  current.counter <- 1
  o <- array[1]
  for(elem in c(2, len(array))){
    if(array[elem] == array[elem - 1]){
      current.counter <- current.counter + 1
    }
    else{
      if(current.counter > max.counter){
        max.counter <- current.counter
        o <- c(o,array[elem-1])
      }
    current.counter <- 1
    }
  }
  if(max.counter > array[len(array)-1]){
    max.counter <- current.counter
    o <- c(c,array[len(array) - 1])
  }
  
  return(o)
}