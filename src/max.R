#' Function return the maximum number in array
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @return number

source("stdlib.R")

SoenMax <- function(array){
  l <- len(array)
  if (l == 0) {
    return("Empty array")
  }
  if (l == 1) {
    return(array[l])
  }
  M <- -9999999999999999
  for (elem in array) {
    if (elem > M) {
      M <- elem
    }
  }
  return(M)
}
