#============================================================================
# script1.R
#
#============================================================================

# If you are using libraries, put them at the top
library(tidyverse)
library(lubridate)
library(readxl)

# Read in a csv file
test_df <- read.csv("y19-vistaverde-counts-expt1.csv")
#    Look at first few and last few lines
head(test_df,3)
tail(test_df,3)

# Read in an Excel file
test_df2 <- read_excel("y19-vistaverde-counts-expt1.xlsx")
test_df2 # gives tibble rather than plain data frame

# Make datetime into date
test_df2$StartDate <- as.Date(test_df2$StartDate)
test_df2$EndDate <- as.Date(test_df2$EndDate)
test_df2
read_xlsx(y19_vistaverde_counts_expt1)