#' Brain vs Body Size
#' 
#' A set of 96 mammel species.
#' @format A data frame with 76 rows and 9 variables:
#' \describe{
#'   \item{Species}{Species Name}
#'   \item{Brain}{Average brain weight (g)}
#'   \item{Body}{Average body weight (kg)}
#'   \item{Gestation}{Average gestation length (days)}
#'   \item{Litter}{Average litter size}
#'   \item{LitterSize}{Discritized litter size }
#' }
"BrainBody"

### How I created the .RData file
# library(dplyr)
# library(Sleuth3)
# BrainBody <- case0902
# BrainBody$LitterSize <- cut( BrainBody$Litter, breaks=c(0,2,4,10), labels=c('few','some','many'))
# save(BrainBody, file='../data/BrainBody.rdata')
