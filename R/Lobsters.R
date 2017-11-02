#' A simulated dataset of lobster captures 
#' 
#' This data is a simulation of a multistage sample. The given
#' scenario is that 31 boats enter a harbor on a given day and
#' 12 different boats or selected for inspection. Aboard each boat,
#' 20 lobsters are sampled and the length of the carapace is measured.
#' Note that any lobster with carapace length less than 3 inches
#' is legally required to be released unharmed at its capture site. 
#' @format A data frame with 240 rows and 4 variables:
#' \describe{
#'   \item{Boat.ID}{A variable denoting which boat.}
#'   \item{Catch.Weight}{The weight of all lobsters caught (by boat, in thousands of pounds).}
#'   \item{Lobster.ID}{A variable indicating which lobster.}
#'   \item{Lobster.Length}{Length of lobsters carapace.}
#' }
#' @examples
#' library(ggplot2)
#' data(Lobsters)
#' # Plot each boats Catch.Weight 
#' ggplot(Lobsters, aes(x=Boat.ID, y=Catch.Weight)) + 
#'   geom_point()
#'      
#' # Plot the lobster lengths, by boat
#' ggplot(Lobsters, aes(x=Boat.ID, y=Lobster.Length)) +
#'   geom_point()    
#' ggplot(Lobsters, aes(x=factor(Boat.ID), y=Lobster.Length)) +
#'   geom_boxplot()
#'      
#' # Plot Lobster Length versus the total Catch Weight
#' ggplot(Lobsters, aes(x=Catch.Weight, y=Lobster.Length)) +
#'   geom_point()
"Lobsters"

##     How did we make this data?
## 
# Lobsters <- data.frame()
# Catch.Weight <- rgamma(12, .5,.5)
# ave.size <- (Catch.Weight + 3)^2 *.2
# for( i in 1:12 ){
#   Lobsters <- rbind(Lobsters, 
#     data.frame(Boat.ID=i, Catch.Weight=Catch.Weight[i], 
#                Lobster.ID=1:20, Lobster.Length=rnorm(20, ave.size[i], 1)))  
# }
# Lobsters <- mutate(Lobsters, Lobster.Length = pmax(Lobster.Length, 3))
# save(Lobsters, file = '../data/Lobsters.rdata')

