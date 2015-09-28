#' Bird Dectections - Simulated Occupancy data
#' 
#' A simulated dataset of a occupancy study of birds where we
#' observe 40 different sites (rows) at 5 different observation
#' time periods. The study undertaken during 10 days during the
#' after the start of the breeding season (so there should be little 
#' to no immigration/emmigration). Each site was visited every
#' other day to obtain independece between successive sampling 
#' events.
#' 
#' @format A matrix with 40 rows (sites) and 5 columns (observation
#' periods).
"Bird.Detections"

# phi <- 0.35
# p   <- 0.60
# 
# n <- 40    # number of Sites
# J <- 5    # number of observations per site
# y <- matrix(NA, nrow=n, ncol=J)
# for(i in 1:n){
#   Z    <- rbinom(1, 1, phi)
#   for(j in 1:J){
#     y[i,j] <- rbinom(1, 1, Z*p)
#   }
# }
# colnames(y) <- paste('T', 1:5, sep='')
# Bird.Detections <- y
# save(Bird.Detections, file='../data/Bird.Detections.rdata')
