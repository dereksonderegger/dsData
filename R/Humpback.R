#' Simulated distance sampling of whales.
#' 
#' A simulated dataset of a distance transect study
#' of Humpback whales during the summer feeding season.
#' The design had 25 different transects (all of length 
#' 1000 meters), that were systematically spread across a 
#' study area that covered 100 square kilometers. 
#' The recorded distances are distance from the individual
#' to the transect in meters. 
#' 
#' #' @format A data frame with 36 rows and 2 variables:
#' \describe{
#'   \item{Sample.Label}{Which transect was the observation made on.}
#'   \item{distance}{Distance to the transect, in meters.}
#' }
"Humpback"


# n <- 25 
# n.per.row <- floor(sqrt(n))
# n.rows <- sqrt(n) 
# transects <- data.frame() 
# for(j in 1:n.rows){
#   transects <- rbind(
#     transects,
#     data.frame(x = seq(50, 900, length=n.per.row)+ j%%2*50,
#                y = rep( (j-1)*1000/n.rows, n.per.row ) ) ) 
# } 
# g.hr <- function(x, sigma=10, b=2){
#   return( 1 - exp(-(x/sigma)^-b ) ) 
# }
# nearest.transect <- Vectorize(function(x, y, transects){
#   transect.y <- (y %/% 100) * 100
#   if(is.element(transect.y, transects$y)){
#     # there is a transect row that associated with this data point
#     transect.xs <- filter(transects, y==transect.y)$x
#     transect.x  <- transect.xs[ which.min(abs(transect.xs-x)) ]
#     return( which(transects$x==transect.x & transects$y==transect.y) )
#   }else{
#     return(NA)
#   }
# }, vectorize.args=c('x','y'))
# sigma=12; b=3
# plot(0:100, g.hr(0:100, sigma, b))
# N <- 400
# X <- runifpoint(3*N, win=owin(c(-1000,2000),c(0,1000)))
# data <- data.frame(x=X$x, y=X$y) %>%
#   mutate( Sample.Label = nearest.transect(x,y, transects),
#           distance = ifelse(is.na(Sample.Label), Inf, abs( x-transects[Sample.Label,'x'] )),
#           prob.detected = g.hr(distance, sigma, b),
#           detected = ifelse( runif(n()) < prob.detected,
#                              TRUE, FALSE)) %>%
#   filter(detected == TRUE) %>%
#   select(x, y, Sample.Label, distance) %>%
#   mutate( distance = 10*distance ) %>%
#   mutate( Effort = 1000,
#           Area = 10000 * 10000,  # should be 1000 x 1000
#           Region.Label = 1)
# 
# # run the analysis
# model <- try( ds(data, key = key, truncation=truncation, quiet=TRUE) )
# model <- ds(data)
# plot(model)
# model
# 
# str(data)
# Humpback <- select(data, Sample.Label, distance)
# save(Humpback, file='../data/Humpback.rdata')
