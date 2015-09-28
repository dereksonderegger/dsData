#' A simulated survey given to NAU students. 
#' 
#' This data is a simulation of a survey designed to measure how
#' frequently students visit the University Union Building on campus.
#' The data collected for each student includes their year in school 
#' (freshman through graduate student) as well as their average number 
#' of visits per week. Information about NAUs student population 
#' demographics can be found at: http://www4.nau.edu/pair/quickfact.asp 
#' @format A data frame with 1100 rows and 2 variables:
#' \describe{
#'   \item{Year}{A factor denoting what year in school the respondant is.}
#'   \item{NumPerWeek}{The number of times per week the repondant visits the UU.}
#' }
#' @examples
#' data(UUnion)
#' ggplot(UUnion, aes(x=Year, y=NumPerWeek)) +
#'   geom_boxplot()
#'   
#' # calculate some summary statistics   
#' library(dplyr)
#' UUnion %>% group_by(Year) %>%
#'   summarize(mean = mean(NumPerWeek),
#'             sd   = sd(NumPerWeek))
"UUnion"


# rtgamma <- function(n, alpha, beta, trunc){
#   out <- rep(NA, n)
#   for(i in 1:n){
#     temp <- rgamma(1, alpha, beta)
#     while( temp > trunc){
#       temp <- rgamma(1, alpha, beta)
#     }
#     out[i] <- temp
#   }
#   return(out)
# }
# n <- c(321, 287, 239, 152, 101, 62) 
# mean.num.times <- c(1, 2.5, 6, 5.5, 1.5)
# Year <-  c('Freshman','Sophmore','Junior','Senior','Grad'), 
# UUnion <- data.frame()
# for( i in 1:5 ){
#   UUnion <- rbind(UUnion, data.frame(
#     Year = Year[i],
#     NumPerWeek = rtgamma(n[i], .5, 1/mean.num.times[i], 15)))
# }
# UUnion$Year <- factor(UUnion$Year, levels = Year)
# UUnion$NumPerWeek <- round(UUnion$NumPerWeek)
# save(UUnion, file = '../data/UUnion.rdata')



