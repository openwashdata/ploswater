# Description ------------------------------------------------------------------
# R script to process uploaded raw data into a tidy, analysis-ready data frame
# Load packages ----------------------------------------------------------------
## Run the following code in console if you don't have the packages
## install.packages(c("usethis", "fs", "here", "readr", "readxl", "openxlsx"))
library(usethis)
library(fs)
library(here)
library(readr)
library(readxl)
library(openxlsx)

# Read data --------------------------------------------------------------------
ploswater <- readr::read_csv(here::here("data-raw","openalex_papers.csv"))

# Tidy data --------------------------------------------------------------------
## Clean the raw data into a tidy format here


# Export Data ------------------------------------------------------------------
usethis::use_data(ploswater, overwrite = TRUE)
fs::dir_create(here::here("inst", "extdata"))
readr::write_csv(ploswater,
                 here::here("inst", "extdata", paste0("ploswater", ".csv")))
openxlsx::write.xlsx(ploswater,
                     here::here("inst", "extdata", paste0("ploswater", ".xlsx")))
