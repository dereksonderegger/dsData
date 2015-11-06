#' Simulated data on treatment of frozen shoulder.
#' 
#' Adhesive capsulitis (also known as Frozen shoulder) is a painful and 
#' disabling disorder of unclear cause in which the shoulder capsule, 
#' the connective tissue surrounding the glenohumeral joint of 
#' the shoulder, becomes inflamed and stiff, greatly restricting motion 
#' and causing chronic pain. (from Wikipedia)
#' 
#' This data set simulations an experiment in which we consider
#' three levels of medical intervention (nothing, 1 round of cortisone shots,
#' or three rounds of cortisone shots) and three levels of manipulation
#' (nothing, weekly physical therapy, weekly physical therapy and massage).
#' At the end of 6 months, the patients increase or decrease in range of
#' motion was recorded.
#' 
#' #' @format A data frame with 36 rows and 2 variables:
#' \describe{
#'   \item{Med}{The medical treatment: either nothing, 1 cortisone shot, or 
#'   a sequence of three shots over the study period}
#'   \item{Manip}{The manipulative treatment: either nothing, physical 
#'   therapy, or physical therapy and massage}
#'   \item{delta}{The increase in range of motion and the conclusion
#'   of the study (in degrees)}
#' }
"Frozen"

### How I created the data
# library(dplyr)
# Frozen <- expand.grid(Med=c('None','Shot','Mult_Shot'),
#                       Manip = c('None','PT','PT+M'),
#                       rep=1:5)
# seed <- floor( runif(1, 0, 1000) )
# set.seed(seed)
# set.seed(345)
# X <- model.matrix(~ Med * Manip, data=Frozen)
# #         Int  S1   S3   Pt  PTM  S1:Pt S3:Pt S1:PtM  S3:PtM
# beta <- c( 0, +10, +15, +10, +15,  +5,   +8,    +7,    +10 )
# Frozen$delta <- X %*% beta + rnorm(nrow(X), sd=7)
# Frozen <- Frozen %>% select(Med, Manip, delta)
# 
# m <- lm( delta ~ Med * Manip, data=Frozen)
# anova(m)
# Frozen$yhat <- predict(m)
# ggplot(Frozen, aes(x=Manip, y=delta, color=Med)) +
#   geom_point() +
#   geom_line(aes(y=yhat, x=as.integer(Manip)))
# save(Frozen, file='data/Frozen.rdata')
