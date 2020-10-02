## code to retrieve and import the `BBS bibliography`  goes here

# grab bbs citations (exported to the package via their webpage) -----------------------------------
path <- tolower(list.files(here::here("data-raw"), full.names = TRUE))

for(i in seq_along(path)){
  if(i==1 & exists("bbs.og")) rm(bbs.og)
  if(!is.na(stringr::str_extract(path[i], "xlsx"))){
   bbs.og <- readxl::read_xlsx(path[i])
  }
  if(exists("bbs.og")) break
}


# write rda to package --------------------------------------------------------
usethis::use_data(bbs.og, overwrite = TRUE)
