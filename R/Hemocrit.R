#' Hemocrit levels
#' 
#' A data set of ficticional cyclists who might be doping. The predictor covariate
#' is the hemocrit level, or the volume percentage of the blood that is red
#' blood cells.  The higher the level, the better the athlete performs at
#' endurance sports. The amount is typically around 45 for healthy adult males
#' and around 40 for healthy adult females.
#' @format A data frame with 200 observations, with two columns 
#' \describe{
#'    \item{hemocrit}{The riders hemocrit level.}
#'    \item{status}{Whether the rider was "clean" or a "cheater".}}
#' @examples 
#' library(ggplot2)
#' ggplot(Hemocrit, aes(x=hemocrit, y=status)) + geom_point()
"Hemocrit"

# set.seed(345)
# clean <- data.frame(hemocrit=c(rnorm(190, mean=48, sd=1)),
#                     status = rep('Clean',190))
# doper <- data.frame(hemocrit=c(rnorm(10, mean=50, sd=1)),
#                     status = rep('Cheat',10))
# Hemocrit <- rbind(clean, doper)
# save(Hemocrit, file='../data/Hemocrit.rdata')
