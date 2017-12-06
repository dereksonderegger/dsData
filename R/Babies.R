#' Simulated data set of baby growth
#' 
#' This dataset is an example of a repeated measures study
#' where there are weight measurements every two months on
#' six babies from 12 to 36 month.
#' 
#' @format a data frame with 78 observations 
#' \describe{
#'   \item{Age}{The age in months the observation was made at.}
#'   \item{Baby}{A number identifying which baby the observation was on.}
#'   \item{Weight}{The weight (in pounds) of the baby.}}
#' @examples 
#' library(ggplot2)
#' ggplot(Babies, aes(x=Age, y=Weight, color=Baby)) +
#'   geom_point() +
#'   geom_line(aes(group=Baby))
"Babies"


################################
## Baby Growth
###############################
# library(devtools)
# set.seed(4207710)
# age <- 9:36
# weight <- 18 + (age-9)*.1 + ((age-9)/5)^2 *.3
# plot(age, weight)
# 
# baby <- matrix(NA, nrow=6, ncol=2)
# baby[1,] <- c(3,.12)
# baby[2,] <- c(-1,-.08)
# baby[3,] <- c(1,.08)
# baby[4,] <- c(-1,.11)
# baby[5,] <- c(0,.14)
# baby[6,] <- c(-.2,.02)
# 
# data <- data.frame(age=NULL, weight=NULL, baby=NULL)
# for( i in 1:6 ){
#   for( age in seq(12,36,by=2) ){
#     data <- rbind( data, data.frame(
#       Age=age, 
#       Baby=i, 
#       Weight=18+baby[i,1] + (age-9)*(.4+baby[i,2]) + 
#         rnorm(1, 0, sd=.25)))
#   }
# }
# Babies <- data
# Babies$Baby <- factor(Babies$Baby)
# 
# library(ggplot2)
# ggplot(Babies, aes(x=Age, y=Weight, color=Baby)) +
#   geom_point() +
#   geom_line(aes(group=Baby))
# 
# use_data(Babies, overwrite=TRUE)

