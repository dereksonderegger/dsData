#' A simulated dataset of the presence/absense of boreal toads.
#'
#' This simulated dataset imagines a study that looks at the 
#' 200 high elevation ponds and lakes and observes if they 
#' water source was used for breeding by boreal toads. For
#' each water source, we have information about the elevation,
#' level of shore vegetation and the maximum depth of the 
#' pool.
#' 
#' @format A data frame with 200 observations of 4 variables.
#' \describe{
#'   \item{Occupancy}{A zero or 1 where a 1 denotes that the site was occupied by toads.}
#'   \item{Elevation}{The site elevation (in feet).}
#'   \item{Shore.Veg}{A factor with three levels (Low, Medium, High)}
#'   \item{Depth}{The maximum depth of the water source (in feet).}}
'Toads' 



#################################
# Boreal Toads                 ##
#################################
# library(devtools)
# library(faraway)
# library(dplyr)
# 
# seed <- floor( runif(1, 0, 1e6))
# seed
# set.seed(seed)
# #set.seed(163584)
# n <- 200
# elevation <- rnorm(n, 10000, sd=1000)
# shore.veg <- factor(
#   sample(c('Low','Medium','High'), size=n, replace=TRUE),
#   levels=c('Low','Medium','High'))
# depth <- rexp(n, 1/7) * (10000/elevation)^1.5
# summary(depth)
# 
# veg.effects <- c(-3, 0, 4)
# y <- 4 +
#   - 5e-6 * (elevation -10000)^2 +
#   - .7*depth +
#   veg.effects[as.integer(shore.veg)]
# y[ which(elevation < 8000 | elevation > 12000)] <- -Inf
# y <- y + rnorm(n, sd=12)
# quantile(y)
# p <- ilogit( y )
# Occupancy <- rbinom(n, size=1, prob=p)
# 
# Toads <- data.frame(Occupancy=Occupancy, Elevation=elevation,
#                     Shore.Veg=shore.veg, Depth=depth) %>%
#   mutate(Elevation = round(Elevation),
#          Depth = round(Depth, digits=1) + 1)
# 
# pairs(Toads)
# m1 <- glm(cbind(Occupancy, 1-Occupancy) ~ Elevation + I(Elevation^2)  + Depth + Shore.Veg,
#           data=Toads, family=binomial)
# 
# m2 <- glm(cbind(Occupancy, 1-Occupancy) ~ Elevation  + Depth + Shore.Veg,
#           data=Toads, family=binomial)
# 
# drop1(m1)
# anova(m1, m2)
# 
# use_data(Toads, overwrite=TRUE)
# 

