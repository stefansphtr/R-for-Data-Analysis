# Load packages
library(tidyverse)
library(lubridate)

# Check the date today
# function date
date()
today()
now()

# Converting from string
ymd("2019-01-01")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)

# Creating datetime components
ymd_hms("2021-01-20 20:11:59")
ymd_hms("2021-01-20 20:11:59", tz = "UTC")
ymd_hms("2021-01-20 20:11:59", tz = "EST")
mdy_hms("01/20/2021 08:01")

# Switching between existing date-time objects
as_date(now())
as_datetime(today())

# Create matrix
matrix(c(1:3), nrow=3, ncol=2)
matrix(c(1:6), nrow=3, ncol=2)
