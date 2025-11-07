packages <- c("stringr", "tidyverse", "readxl", "magrittr", "dplyr", "ggplot2", "knitr", "stopwords")

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  } else {
    library(pkg, character.only = TRUE)
  }
}
