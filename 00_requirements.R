packages <- c("stringr", "tidyverse", "readxl", "magrittr", "here", "dplyr", "ggplot2", "knitr", "stopwords")

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  } else {
    library(pkg, character.only = TRUE)
  }
}

load_books <- function(folder_path) {
  files <- list.files(folder_path, full.names = TRUE)
  
  books <- lapply(files, function(f) {
    readLines(f, encoding = "UTF-8") %>%
      str_trim() %>%
      str_replace_all("\n", " ") %>%
      str_flatten(collapse = " ") %>%
      str_squish() %>%
      str_to_lower()
  })
  
  names(books) <- basename(files)
  return(books)
}
