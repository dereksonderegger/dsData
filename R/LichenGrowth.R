#' Simulated Lichen Growth
#' 
#' A study was performed examining the amount of growth
#' over a season relative to the amount of water available. 
#' 
#' Confession: I didn't spend the time
#' to get the scale for the water or for growth to 
#' be biologically correct for how they actually get measured.
#' 
#' @format A data frame with 60 rows and 3 variables:
#' \describe{
#'   \item{Species}{Lichen Species}
#'   \item{Water}{A normalized measure of water availability (bigger is more water)}
#'   \item{Growth}{A measure of how much growth occured (bigger is more growth)}
#' }
"LichenGrowth"

### How I created the data
# n <- 20
# LichenGrowth <- expand.grid(Species=c('A','B','C'), Water=seq(0,1,length=n))
# X <- model.matrix( ~ Species + Water, data=LichenGrowth ) 
# beta <- c(1, -2, 1, 5) 
# LichenGrowth$Growth <- 10 ^ ( (X %*% beta + rnorm(n, sd=.5))*.2 ) 
# ggplot(LichenGrowth, aes(x=Water, y=Growth, color=Species)) + geom_point()
# model <- lm( Growth ~ Water + Species, data=LichenGrowth)
# library(MASS)
# boxcox(model)
# save(LichenGrowth, file='../data/LichenGrowth.rdata')
