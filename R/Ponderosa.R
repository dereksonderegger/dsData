#' A simulated forestry survey 
#' 
#' This data is a simulation of a survey designed to estimate the average
#' age of mature Ponderosa Pine trees. The idea is that 50 randomly selected
#' 0.25 hectare plots are selected and all the mature trees in the plot are
#' sampled for age (via tree cores).
#' @format A data frame with 227 rows and 2 variables:
#' \describe{
#'   \item{Plot.ID}{A variable denoting which Plot the observation came from}
#'   \item{Age}{Age of the observed tree.}
#' }
#' @examples
#' data(Ponderosa)
#' ggplot(Ponderosa, aes(x=Age)) +
#'   geom_histogram(aes(y=..density..)) +
#'   geom_density(color='red', size=2)
#'   
#' # calculate some summary statistics   
#' library(dplyr)
#' Ponderosa %>% group_by(Plot.ID) %>%
#'   summarize(mean = mean(Age),
#'              sd   = sd(Age))
"Ponderosa"

# Ponderosa <- NULL
# strata.means <- c( 80, 145, 210 )
# avg.age.per.stand <- sample(strata.means, size = 50, replace=TRUE)
# for(i in 1:50){
#   Ponderosa <- rbind(Ponderosa, data.frame(
#     Plot.ID=i,
#     Age = rnorm(runif(1,1,10), avg.age.per.stand[i], sd=20)))
# }
# save(Ponderosa, file = '../data/Ponderosa.rdata')

