## code to retrieve and import the edited BBS bibliographygoes here
dir<-here::here("data-raw")
# grab bbs citations (exported to the package via their webpage) -----------------------------------
path <-
  tolower(list.files(
    dir,
    pattern = "bbs-enhanced.csv",
    full.names = TRUE
  ))

bbs.enhanced <- read.csv(path)

# BBS author lookups ------------------------------------------------------
bbs.authors <- read.csv(list.files(dir, pattern="lookup-authors", full.names=TRUE))


# Get bibtex --------------------------------------------------------------
# bbs.bib<-read.BIB???(list.files(dir, pattern="bbs.bib", full.names=TRUE))


# Replicate the entries for AHM reports -----------------------------------



# write rda to package --------------------------------------------------------
usethis::use_data(bbs.enhanced, overwrite = TRUE)
