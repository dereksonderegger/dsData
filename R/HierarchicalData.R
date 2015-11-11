#' A simulated hierarchical analysis 
#' 
#' This data is simulated an experiment that has some 
#' hierachical nesting. This is a plant response experiment
#' where there are 9 rings, three of which
#' are randomly assigned to treatment A, three assigned to 
#' treatment B and the final 3 to treatment C. Within each
#' ring, we observe six individual plants. So we have 6*9=54
#' observations, but the plants are nested within the ring.
#' @format A data frame with 54 rows and 4 variables:
#' \describe{
#'   \item{Trt}{A categorical variable (A,B,C) denoting what treatment was applied.}
#'   \item{Ring}{A categorical varible (1,...,9) denoting which ring the observation was from.}
#'   \item{Rep}{A number from (1,2,...,6) denoting which replicate within a ring.}
#'   \item{y}{The response variable.}
#' }
#' @references This dataset was inspired by: Evans et al (2014) Greater ecosystem carbon in the Mojave Desert 
#' after ten years exposure to elevated CO2. Nature Climate Change 4(5): 394-397.
#' @examples
#' library(ggplot2)
#' ggplot(HierarchicalData, aes(y=y, x=Ring, color=Trt)) +
#'   geom_point()
"HierarchicalData"


# set.seed(34674)
# library(dplyr)
# data <- expand.grid(Trt=c('A','B','C'), Plot=1:3, rep=1:6) %>%
#   mutate( Ring = factor( as.integer(interaction(Plot,Trt))) ) %>%
#   arrange(Trt, Plot, rep)
# X <- model.matrix(~ Trt, data)
# Z <- model.matrix(~ Ring, data)
# beta    <- c(200, 40, 30)
# gamma   <- rnorm( ncol(Z), sd=20 )
# epsilon <- rnorm( nrow(X), sd=30 )
# data$y <- X%*%beta + Z%*%gamma + epsilon
# HierarchicalData <- data
# save(HierarchicalData, file = './data/HierarchicalData.rdata')

