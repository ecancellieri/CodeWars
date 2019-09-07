s1  <- "ddbbeerr"
s2  <- "bbcc"
st  = paste(s1, s2, sep = '')
u1  = sort(unique(strsplit(st, "")[[1]]))
out = paste(u1, collapse = '')

