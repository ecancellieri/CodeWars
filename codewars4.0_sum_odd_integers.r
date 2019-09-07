row_sum_odd_numbers <- function(n){
  n_odd = n*(n-1) + 1
  out   = 0
  for (i in 1:n) {
    out   = out + n_odd
    n_odd = n_odd + 2
  }
  return(out)
}

row_sum_odd_numbers(3)