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

