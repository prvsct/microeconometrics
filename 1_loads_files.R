# ---- Preamble -----
# 
# This file contains some initial analysis of the WFH paper data.

# Initializes renv project
renv::init()

# Installs tidyverse
renv::install("tidyverse")

# ---- Loading files ----

# Load files inside wfh/data using haven::read_dta
files <- fs::dir_ls("wfh/data") %>%
  purrr::map(haven::read_dta)

# Saves Rdata
save(files, file = "files.Rdata")

# Snapshots renv
renv::snapshot()
