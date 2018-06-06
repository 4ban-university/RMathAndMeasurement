#' Function mode returns the most frequent element of array
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @return array

source("stdlib.R")

SoenMode <- function(array){
  l <- len(array)
  if (l == 0) {
    return("Empty array")
  }
  if (l == 1) {
    return(array[l])
  }
  array <- SoenSort(array)
  max.counter <- 1
  current.counter <- 1
  o <- vector()
  for (elem in c(2:l)) {
    if (array[elem] == array[elem - 1]) {
      current.counter <- current.counter + 1
    } else {
        if (current.counter == max.counter) {
          o <- c(o, array[elem-1])
        }
        if (current.counter > max.counter) {
          max.counter <- current.counter
          o <- array[elem-1]
        }
        current.counter <- 1
     }
  }
  
  if (current.counter > max.counter) {
    o <- array[l]
  }
  if (max.counter == current.counter) {
    o <- c(o, array[l])
  }
  return(o)
}
