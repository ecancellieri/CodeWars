squaresInRect <- function(lng, wd) {
  if (lng == wd){
    return(NULL)
  }
  out <- vector()
  aux_max <- max(lng, wd) 
  aux_min <- min(lng, wd)
  while (aux_max != aux_min){
    out <- c(out, aux_min)
    aux_min <- min(aux_min, aux_max-aux_min)
    aux_max <- max(tail(out, n=1), aux_max-tail(out, n=1))
  }
  out <- c(out, aux_min)
  return(out)
}


squaresInRect(5,5)
