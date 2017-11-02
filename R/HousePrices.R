#' Housing data from 2005
#' 
#' A set of 76 listings from Eugene OR in 2005.
#' @format A data frame with 76 rows and 9 variables:
#' \describe{
#'   \item{Price}{Price of the home}
#'   \item{SqFeet}{Floor size}
#'   \item{LotSize}{Lot size category (from 1 to 11, with 11 being a large lot)}
#'   \item{NumBaths}{Number of bathrooms}
#'   \item{NumBeds}{Number of bedrooms}
#'   \item{YearBuilt}{Year the house was built}
#'   \item{GarageSize}{Number of cars (0 is no garage)}
#'   \item{Elementary}{Nearest elementary school}
#' }
"HousePrices"

### How I created the .RData file
# library(dplyr)
# HousePrices <- read.csv('../inst/extdata/HousePrices.csv')
# HousePrices <- read.csv('./inst/extdata/HousePrices.csv')
# HousePrices <- HousePrices %>%
#   mutate(
#     Price = Price * 1000,
#     SqFeet = SqFeet * 1000,
#     LotSize = factor(LotSize),
#     NumBaths = floor(NumBaths) + (NumBaths - floor(NumBaths))*5 ) %>%
#   select( -Status )
# use_data(HousePrices, overwrite=TRUE)
