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

data.frame()

### Reviewing data import

### 1. The wrong way

## Clicking on the file name gets it to import using
## 'readxl':
# > library(readxl)
# > y19_trapview_beede_1_download <- read_excel("y19-trapview-beede-1-download.xls")
# New names:
# * `` -> ...2
# * `` -> ...3
# * `` -> ...4
# * `` -> ...5

## Problem--bad defaults, bad file name, and bad datafrom
head(y19_trapview_beede_1_download)
# A tibble: 6 x 5
# `Number of pest in period`     ...2      ...3             ...4          ...5 
# <chr>                          <chr>     <chr>            <chr>         <chr>
# 1 From date: 04.26.2019 00:00:00 NA        NA               NA            NA   
# 2 To date: 05.16.2019 16:33:49   NA        NA               NA            NA   
# 3 NA                             NA        NA               NA            NA   
# 4 Date                           Pests no. Pests difference User reviewed Event
# 5 NA                             NA        NA               NA            NA   
# 6 04.26.2019 13:56:00            7         7                Yes           NA 

### Variable names (after "tibble" are horrible). What is really needed is to
### export starting with line 4, but those are bad variable names also 

### 2. The easiest right way--excise, save as csv, and use read.csv()
###    Changed names manually, but consistency will be important. Better done in
###    script. Saved as beede.csv
beede <- as_tibble(read.csv("beede.csv", stringsAsFactors = FALSE)) 
# tibble from tidyverse makes some things easier. Better not to assign factors yet
head(beede)
# A tibble: 6 x 5
#   date_time           nmbr_pests change_pests user_rvwd event                                    
#   <chr>                    <int>        <int> <chr>     <chr>                                    
# 1 04.26.2019 13:56:00          7            7 Yes       lorem ipsum impressive latin space filler
# 2 04.26.2019 14:56:00          7            0 Yes       ""                                       
# 3 04.26.2019 15:57:00          7            0 Yes       ""                                       
# 4 04.26.2019 16:56:00          7            0 Yes       ""                                       
# 5 04.26.2019 17:57:00          7            0 Yes       ""                                       
# 6 04.26.2019 18:57:00          7            0 Yes       ""       

# Figure out function to tell lubricate format
# beede$date_time <- as_datetime(beede$date_time)

### 3. Use readxl() with approriate options

### Can chose first line, probably can rename variables. We can 
### learn/refresh fri pm, or we can make a note to RTFM


