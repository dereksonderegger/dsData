#' Daily maximum termperature in Flagstaff, AZ
#' 
#' Information about the daily maximum temperture in Flagstaff, AZ from May 1985 to December 2015.
#' 
#' @format A data frame with 5 variables:
#' \describe{
#'   \item{Date}{The date of the observation.}
#'   \item{Year}{Year of the observation.}
#'   \item{Month}{Month of the observation.}
#'   \item{Day}{Day of month of the observation.}
#'   \item{MaxTemp}{Daily maximum temperature (in degrees Farenheit).}
#' }
"FlagstaffTemp"

# library(dplyr); library(tidyr);
# library(lubridate); library(stringr)
# # I need to record where I got this data so I can periodically update this.
# FlagstaffTemp <- read.csv('../inst/extdata/FlagMaxTemp.csv') %>%
#   gather('Day','MaxTemp', X1:X31) %>%
#   drop_na() %>%
#   mutate( Day = str_replace(Day, 'X', '') %>% as.numeric() ) %>%
#   mutate( Date = ymd(str_c(Year,'_', Month,'_', Day)) ) %>%
#   arrange( Date ) %>%
#   select( Date, Year, Month, Day, MaxTemp )
# save(FlagstaffTemp, file = '../data/FlagstaffTemp.rdata')




