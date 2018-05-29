min <- function(array){
  res <- 99999999999999999
  for(elem in array){
    if(elem < res){
      res <- elem
    }
  }
  return(res)
}

array <- c(1,5,4,2,5,3,4,5,2,4,3,5,1,3,2,87,34,545,4,3,4,5,5,75,9,73,53,42,451,334,38,2,332,35,119)
print(min(array))