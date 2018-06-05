# Function min return the min element in array
# Author Dmitry Kryukov

SoenMin <- function(array){
  m <- 9999999999999999
  for (elem in array) {
    if (elem < m) {
      m <- elem
    }
  }
  return(m)
}
