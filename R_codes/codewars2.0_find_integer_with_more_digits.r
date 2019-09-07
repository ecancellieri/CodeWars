find_longest <- function(arr) {
  ndigit <- 0
  for (case in arr){
    if (nchar(case) > ndigit){
      ndigit <- nchar(case)
      out   <- case
    }
  }
  return(out)
}

find_longest(c(1,10,100,200))
