# 1. Activate the environment (if not already done by .Rprofile)
# This ensures R looks in the local 'renv' folder, not your global library
source("renv/activate.R") 

# 2. Restore the environment
# This installs any packages listed in renv.lock that are missing locally
renv::restore(prompt = FALSE)

# Run all files to replicate the results
#-------------
# Clear environment
rm(list = ls())
library(here)
#-------------
# Fix conflicts 
library(conflicted)
conflict_prefer("select", "dplyr")
#-------------
# Construct the data
source(here::here('scripts/R/0_make_data.R'), echo = TRUE)
#-------------
# Construct Adoption Table
source(here::here('scripts/R/1_adoption_table.R'), echo = TRUE)
#-------------
# Run 2x2 analysis
source(here::here('scripts/R/2_2x2.R'), echo = TRUE)
#-------------
# Run 2xT analysis
source(here::here('scripts/R/3_2xT.R'), echo = TRUE)
#-------------
# Run the GxT analysis
source(here::here('scripts/R/4_GxT.R'), echo = TRUE)
#-------------
