#' Simulated data set of baby growth
#' 
#' This dataset is simulated data that represents a hypothetical study where
#' we observe 182 individuals with different socio-economic status but
#' similar high school GPAs and SAT scores. We then observe the selectivity of 
#' the college they attend and then finally
#' their salary 10 years after graduating from college. The hypotheses is that
#' all else being equal, attending a highly selective college will matter more
#' for children with a low socio-economic status than for children of high
#' socio-economic parents.
#' 
#' @format a data frame with 182 observations 
#' \describe{
#'   \item{Socio}{The socio-economic background the individual was raised in (Low, Medium, High).}
#'   \item{Selectivity}{The selectivity of the college the person attended. (Medium, High)}
#'   \item{Income}{The individuals yearly income, 10 years out of college.}}
"University"

########################################
## Income vs parent's socio-economic 
## status vs selectivity of school
########################################
# seed <- floor( runif(1, 0, 1e6))
# seed
# set.seed(seed)
# set.seed(8584)
# ni <- 30
# d1 <- data.frame(Socio='Low', Selectivity='Medium', 
#                  Log.Income=10.3 + rnorm(rpois(1,ni), 0, sd=.4))
# d2 <- data.frame(Socio='Medium', Selectivity='Medium', 
#                  Log.Income=10.9 + rnorm(rpois(1,ni), 0, sd=.4))
# d3 <- data.frame(Socio='High', Selectivity='Medium', 
#                  Log.Income=11.5 + rnorm(rpois(1,ni), 0, sd=.4))
# d4 <- data.frame(Socio='Low', Selectivity='High', 
#                  Log.Income=10.8 + rnorm(rpois(1,ni), 0, sd=.4))
# d5 <- data.frame(Socio='Medium', Selectivity='High', 
#                  Log.Income=11.0 + rnorm(rpois(1,ni), 0, sd=.4))
# d6 <- data.frame(Socio='High', Selectivity='High', 
#                  Log.Income=11.5 + rnorm(rpois(1,ni), 0, sd=.4))
# University <- rbind(d1, d2, d3, d4, d5, d6)
# University$Income <- round(exp(University$Log.Income), digits=-3)
# University$Log.Income <- NULL
# 
# m1 <- lm(Income ~ Socio + Selectivity, data=University)
# 
# m1 <- lm(log(Income) ~ Socio + Selectivity, data=University)
# m2 <- lm(log(Income) ~ Socio * Selectivity, data=University)
# 
# ggplot(University, aes(x=Socio, y=log(Income), color=Selectivity)) +
#   geom_boxplot() 
# anova(m1, m2)
# 
# use_data(University, overwrite=TRUE)
