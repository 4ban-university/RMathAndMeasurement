# Library with implementation of standart functions
# Author: Dmitry Kryukov

# Return len of an array
SoenLen <- function(array){
  count <- 0
  for (elem in array){
    count <- count+1
  }
  return(count)
}

# Return sqrt of a number
SoenSqrtA <- function(number){
  if (number == 0) {
    return(number)
  }
  if (number == 1) {
    return(number)
  }
  low = 0
  high = number
  mid = 0
  
  while (high - low > 0.0000001) {
    mid <- low + (high - low) / 2
    if (mid*mid > number)
      high <- mid
    else
      low <- mid
  }    
  return(mid)
}

# Return sqrt of a number
SoenSqrtB <- function(number){
  i <- 0
  j <- number/2+1
  
  while (i <= j){
    mid <- (i+j)/2
    if (number/mid == mid) {
      return(mid)
    } else if (mid < number/mid) {
      i <- mid +1
    } else {
      j <- mid -1
    }
  }
  return(j)
}

# Return sorted array via quick sort
SoenSort <- function(array){
  l <- len(array)
  if (l > 1) {
    p = array[l %/% 2]
    left = sortB(array[array < p])
    middle = array[array == p]
    right =  sortB(array[array > p])
    return(c(left, middle, right))
  } else {
    return(array)
  }
}