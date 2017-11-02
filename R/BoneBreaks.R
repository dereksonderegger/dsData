#' A simulationed dataset about a study relating the age of the patient 
#' and severity of a bone break with duration of the healing time.
#' 
#' @format A data frame with 60 observations on the following 3 variables.
#' \describe{
#'   \item{Age}{The age froup of the patient. Either young or old.}
#'   \item{FracLength}{The length of the fracture (in cm).}
#'   \item{Duration}{The duration of healing (in weeks).}
#' }
"BoneBreaks"


# library(dplyr)
# library(ggplot2)
# library(devtools)
# set.seed(66855);
# n <- 60
# BoneBreaks <- data.frame(
#   FracLength = rgamma(n, shape=1/2, rate = .4) + 1,
#   Age = rep(c('young','old'), each=n/2)) %>%
#   mutate(logFracLength = log(FracLength)) %>%
#   mutate(Elogy = 1.5 + .1 *ifelse(Age=='old',2,1) * logFracLength) %>%
#   mutate(logy = Elogy + rnorm(n, sd=0.07),
#          Duration = exp(logy)) %>%
#   select(Age, FracLength, Duration)
# 
# ggplot(BoneBreaks, aes(x=FracLength, y=Duration, color=Age)) +
#   geom_point()
# 
# model <- lm(log(Duration) ~ log(FracLength) * Age, data=BoneBreaks)
# anova(model)
# 
# use_data(BoneBreaks, overwrite=TRUE)
#     
