remove_smallest <- function(numbers){
  n_elements    <- length(numbers)
  if (n_elements <= 1){
    return(numeric(0))
  } else {
    i_min         <- which.min(numbers)
    out_numbers   <- vector()
    for(i in 1:n_elements){
      if (i != i_min){
        out_numbers <- c(out_numbers, numbers[i])
      }
    }
    return(out_numbers)
  }
}

remove_smallest(c(1))
remove_smallest(c(1,0,2,3,4,5))
remove_smallest(integer(0))
