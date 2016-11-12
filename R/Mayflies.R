#' Mayfly Abundance
#' 
#' Because mayflies are sensitive to metal pollution, we might be interested in 
#' looking at the presence/absence of mayflies in a stream relative to a pollution 
#' gradient. This simulated dataset gives a pollution gradient is measured in 
#' Cumulative Criterion Units (CCU), where  CCU is defined as the ratio of the 
#' measured metal concentration to the hardness adjusted chronic criterion 
#' concentration, and then summed across each metal. Large values of CCU
#' imply more metal pollution. 
#' @format A data frame with 30 observations, with two columns 
#' \describe{
#'    \item{CCU}{Heavy metal pollution index (higher is more pollution).}
#'    \item{Occupancy}{Whether Mayflies were present at the site.}}
#' @references This dataset was inspired by: Sonderegger, D.L., Wang, H., 
#' Clements, W.H., and Noon, B.R. (2009) Using SiZer to detect thresholds in 
#' ecological data. Frontiers in Ecology and the Environment 7:190-195.
"Mayflies"

# library(devtools)
# library(faraway) # for ilogit
# set.seed(370)
# n <- 30
# x <- sort(runif(n, 0, 5))
# w <- rbinom(n, size=1, prob=ilogit(-1*(2*x-3)))
# Mayflies <- data.frame(CCU=x, Occupancy=w)
# use_data(Mayflies, overwrite=TRUE)
