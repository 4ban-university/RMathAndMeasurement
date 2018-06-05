# Function return the maximum number in array
# Author: Dmitry Kryukov

SoenMax <- function(array){
  M <- -9999999999999999
  for (elem in array) {
    if (elem > M) {
      M <- elem
    }
  }
  return(M)
}
