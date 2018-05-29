# Function mode returns the most frequent element of array
# Author: Dmitry Kryukov

source("stdlib.R")

mode <- function(array){
  counter <- 1
  tempCount <- 0
  res <- array[1]
  temp <- 0
  
  for(i in array){
    temp <- i
    tempCount <- 0
    for(j in array){
      if(temp == j){
        tempCount <- tempCount+1
      }
    }
    if(tempCount > counter){
      res <- temp
      counter <- tempCount
    }
  }
  return(res)
}

array <- c(0,1,1,2,2,2,3,3,3,3,3,3,5,5,5,4,5,6,4,5,5,6,6) #3
print(mode(array))