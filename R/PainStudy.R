#' Simulated data on the treatment of back pain
#' 
#' Chronic back pain can be a debilative problem that causes people to reduce
#' their motion which can lead to further problems. As such addressing chronic
#' back pain as a way of keeping the rest of the body healthy is of considerable 
#' concern.
#' 
#' This data set simulates an experiment in which we consider
#' three levels of electrotherapy intervention (No Electrotherapy, electrotherapy using 
#' low frequency simulation, electrotherapy using high frequency, where the low and
#' high are describing the electrical simulation in Hz). A secondary type of 
#' treatment regarding lifestyle changes (None, Physical Therapy, Strength Training)
#' was also included. At the end of 6 months of therapy, patients
#' rated their observed increase or decrease in pain levels.
#' 
#' @format A data frame with 72 rows and 3 variables:
#' \describe{
#'   \item{Electro}{The medical treatment: either None, Low, or High, where None
#'   is corresponds to no therapy.} 
#'   \item{Lifestyle}{Change in Lifestyle: either Passive, PT, or Str. These 
#'   correspond to no change, Physical Therapy, or Strength training.}
#'   \item{delta}{The reported change in chronic pain.}
#' }
"BackPain"

### How I created the data
# library(dplyr)
# library(devtools)
# library(ggplot2)
# BackPain <- expand.grid(Electro=c('None','Low','High'),
#                         Lifestyle = c('Passive','PT','Str'),
#                         rep=1:8)
# seed <- floor( runif(1, 0, 1000) )
# set.seed(seed)
# set.seed(862)
# X <- model.matrix(~ Electro * Lifestyle, data=BackPain)
# #         Int  Low High   Pt  Str  Low:Pt High:Pt  Low:Str  High:Str
# beta <- c( 0, -10, -18,  -17, -30,  -2,    +0,       +13,     +14 )
# BackPain$delta <- X %*% beta + rnorm(nrow(X), sd=9)
# BackPain$delta <- BackPain$delta[,1]
# BackPain <- BackPain %>% select(Electro, Lifestyle, delta)
# use_data(BackPain, overwrite=TRUE)
# 
# ggplot(BackPain, aes(y=delta, x=Lifestyle, color=Electro)) +
#   geom_point()
# 
# m <- lm( delta ~ Electro * Lifestyle, data=BackPain)
# anova(m)
# BackPain$yhat <- predict(m)
# ggplot(BackPain, aes(y=delta, x=Lifestyle, color=Electro)) +
#   geom_point() +
#   geom_line(aes(y=yhat, x=as.integer(Lifestyle)))
# 
