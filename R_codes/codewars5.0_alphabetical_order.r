meeting <- function(s) {
  inv_list1 = as.list(strsplit(s, ";")[[1]])
  inv_list2 = list()
  for (invited in inv_list1){
    name_surname = as.list(strsplit(invited, ":")[[1]])
    surname_name = list(name_surname[2],name_surname[1])
    inv_list2 = list(inv_list2, surname_name)
  }
  print(inv_list2)
}


invited_list = "Alexis:Wahl;John:Bell;Victoria:Schwarz;Abba:Dorny;Grace:Meta;Ann:Arno;Madison:STAN;Alex:Cornwell;Lewis:Kern;Megan:Stan;Alex:Korn"

meeting(invited_list)