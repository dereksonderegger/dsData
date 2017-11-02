#' A simulated study the effects of soil nutrients on harvest levels
#' 
#' The study is an observational study looking at the Nitrogen,
#' Phosporus, and Potassium levels in 50 plots and along with the
#' harvest amounts for those plots. 
#' @format A data frame with 50 rows and 4 variables:
#' \describe{
#'   \item{Harvest}{The number of bushels harvested for the plot}
#'   \item{N}{Nitrogen concentration (in ppm)}
#'   \item{P}{Phosporus concentration (in ppm)}
#'   \item{K}{Potassium concentration (in ppm)}
#' }
"PlantNutrients"

# Nitrogen NO3
#    low         < 10 ppm
#    Medium     10-20 ppm
#    High       20-30 ppm
#    Excessive   > 30 ppm
# PO4
#    low       < 20 ppm
#    Medium     20 - 40 ppm
#    High       40 - 100 ppm
#    Excessive  > 100 ppm
# K
#    very low  < 75 ppm
#    Low       75-150 ppm
#    Medium    150 - 250 ppm
#    High      250 - 800 ppm
#    Very High > 800 ppm
#    
# library(dplyr); library(tidyr);
# library(ggplot2); library(GGally); library(ggfortify)
# library(mvtnorm)
# seed <- runif(1, 0, 100000) %>% round(); set.seed(67386); seed;
# n <- 50
# R <- cbind( c(1,.2,.1), c(.2, 1,.1),c(.1,.1,1))  # Correlation
# D <- diag( c(5,30,60) )                           # Std Devs
# PlantNutrients <- rmvnorm(n, mean = c(15, 90, 200), sigma=D%*%R %*%D)
# colnames(PlantNutrients) <- c('N','P','K')
# PlantNutrients <- data.frame(PlantNutrients)
# X <- model.matrix(~N + P + I(P^2) + K, data=PlantNutrients)
# beta <- c( 20, 1, c(.1, -.0005)*40, 0)
# PlantNutrients$Harvest <- (X %*% beta)[,1] + rnorm(n, sd=4)
# PlantNutrients <- PlantNutrients %>% dplyr::select(Harvest, N, P, K)
# 
# save(PlantNutrients, file = '../data/PlantNutrients.rdata')
