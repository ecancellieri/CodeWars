# https://www.codewars.com/kata/54d512e62a5e54c96200019e/train/r
# Calculate prime factors of a number

primeFactors <- function(n) {
  str_out = ""
  if (n == 1){
    return(str_out )
  }
  upper = floor(sqrt(n))
  j <- 0
  while (n%%2 == 0){
    n <- n/2
    j <- j+1
  }
  if (j != 0){
    if (j == 1){    
      str_out <- paste0(str_out, "(2)")
    } else {
      str_out <- paste0(str_out, "(2**", j, ")")
    }
  }
  i <- 3
  while (i < upper){
    j <- 0
    while (n%%i == 0){
      n <- n/i
      j <- j+1
    }
    if (j != 0){
      if (j == 1){
        str_out <- paste0(str_out, "(", i, ")")
      } else {
        str_out <- paste0(str_out, "(", i, "**", j, ")")
      }
    }
    i <- i+2
  }
  if (n != 1){
    str_out <- paste0(str_out, "(", n, ")")
  }
  return(str_out)
}

primeFactors(7775460)


