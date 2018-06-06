#' Function return the arithmetical mean (average) number of an array
#' @author Dmitry Kryukov
#' @param array The data we are work with
#' @return number

source("stdlib.R")

SoenMean <- function(array){
  l <- len(array)
  mu <- 0
  if (l == 0) {
    return("Empty array")
  }
  if (l == 1) {
    return(array[l])
  }
  for (elem in array) {
    mu <- mu+elem
  }
  mu <- mu/l
  return(mu)
}