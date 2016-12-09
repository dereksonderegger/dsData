#' Time Series of Macroinvertabrates Abundance in the Arkansas River.
#' 
#' A time series of 16 years (5 replicates per year) of mayfly 
#' (Ephemeroptera:Heptageniidae) abundance in the fall at the monitoring station AR1
#' on the Arkansas River in Colorado, USA. These data were taking from the R 
#' package SiZer.
#' @format A data frame with 90 observations on the following 2 variables.
#' \describe{
#'   \item{year}{The year of observation}
#'   \item{sqrt.abundance}{The Square root of observed abundance.}
#' }
"Arkansas"

##     How did we make this data?
## 
# library(dplyr)
# library(SiZer)
# library(devtools)
# data(Arkansas)
# Arkansas <- Arkansas %>%
#   rename( sqrt.abundance = sqrt.mayflies )
# use_data(Arkansas)

