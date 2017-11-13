#' A simulated survey of comparing the species make-up of two different
#' ecological communities. 
#' 
#' This data is a simulation of a survey designed to measure the difference
#' in ecological diversity of two different communities. Each row represents a 
#' site and we have observed the abundances of 5 different species (labeled A, B, ..., E).
#' The two community types are labeled I and II.
#' 
#' @format A data frame with 34 rows and 6 variables:
#' \describe{
#'   \item{Community}{A factor denoting what community type the observation came from}
#'   \item{A}{The number species A observed.}
#'   \item{B}{The number species B observed.}
#'   \item{C}{The number species C observed.}
#'   \item{D}{The number species D observed.}
#'   \item{E}{The number species E observed.}
#' }
#' @examples
#' library(tidyverse)
#' library(vegan)
#' data('CommunitySurvey', package='dsData')
#' DistMatrix <- CommunitySurvey %>% 
#'   select(-Community) %>%
#'   vegdist( )
#' model <- anosim(DistMatrix, CommunitySurvey$Community)
#' summary(model)
#' model$statistic
"CommunitySurvey"

# library(dplyr)
# library(devtools)
# set.seed(76593)
# output <- NULL
# for(i in 1:18){
#   output <- rbind(output, rpois(5, c(4,8,1,1/2,1/2)))
# }
# for(i in 1:16){
#   output <- rbind(output, rpois(5, c(1,2,2,2,3)))
# }
# colnames(output) <- c('A','B','C','D','E')
# output <- output %>% data.frame() %>%
#   mutate( Community = c( rep('I',18), rep('II',16) ) )
# output <- output %>%
#   select(Community, A, B, C, D, E)
# 
# CommunitySurvey <- output  
# use_data(CommunitySurvey, overwrite=TRUE)


