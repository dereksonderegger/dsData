#' Simulated data on Mosquito Abundance
#' 
#' Mosquitos are a very common disease vector and understanding the climactic
#' drivers of large mosquito populations will be helpful to understand disease 
#' outbreaks and how disease might change in the face of climate change. 
#' 
#' This data set simulates an observational study where we observe a number 
#' of communities and record an abundance measurement along with pertinent 
#' covariates.
#' 
#' @format A data frame with ??? rows and ??? variables:
#' \describe{
#'   \item{Abundance}{A measure of mosquito abundance.} 
#'   \item{MaxSummerTemp}{Maximum Summer Temperature (Farenheit).}
#'   \item{AnnualPrecip}{Annual Precipitation (in inches).}
#'   \item{MedianIncome}{Household Median Income.}
#'   \item{Population}{Population size.}
#' }
"Mosquitos"

### How I created the data
# library(dplyr)
# library(devtools)
# library(ggplot2)
# 
# seed <- round( runif(1, 0, 10000) ); set.seed(seed); set.seed(9413);
# n <- 50
# Mosquitos <- data.frame(
#     MaxSummerTemp = rnorm(n, mean = 98, sd=8),
#     AnnualPrecip = rnorm(n, mean=40, sd=15),
#     MedianIncome = rnorm(n, mean=50000, sd=10000),
#     Population = c(rnorm(n/2, mean=30000, sd=10000), rgamma(n/2, 2, 1/200000))) %>%
#   mutate(Abundance = -14500 + 
#            320*MaxSummerTemp - 1.6*MaxSummerTemp^2 + 
#            5*AnnualPrecip +
#            -.002*MedianIncome +
#            -.000001*Population +
#            0) %>%
#   mutate(Abundance=Abundance + rnorm(n, sd=100))
# pairs( Abundance ~ MaxSummerTemp + AnnualPrecip + MedianIncome + Population, data=Mosquitos)
# summary(Mosquitos)
# 
# model.1 <- lm( Abundance ~ MaxSummerTemp + AnnualPrecip + MedianIncome + Population, data=Mosquitos)
# anova(model.1)
# 
# model.2 <- lm( Abundance ~ MaxSummerTemp + I(MaxSummerTemp^2) + AnnualPrecip + MedianIncome + Population, data=Mosquitos)
# anova(model.2)
# 
# use_data(Mosquitos, overwrite=TRUE)
