#' A simulated dataset describing the abundance of certain insects
#' that are thought to be sensitive to heavy metal pollution.
#' @format A data frame with :
#' \describe{
#'   \item{Pollution}{Categorical variable denoting one of four levels of pollution.}
#'   \item{Species}{What species is being observed.}
#'   \item{Log.Abundance}{The log count of the number of individuals observed.}
#' }
"Pollution"

# Pollution <-structure(list(
#   Pollution = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 
#                           1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 
#                           4L, 4L, 4L, 4L, 4L, 4L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 
#                           2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 4L, 
#                           4L, 4L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
#                           3L, 3L, 3L, 3L, 3L, 3L, 3L, 4L, 4L, 4L, 4L, 4L, 4L, 4L), 
#                         .Label = c("Pristine", "Low", "Medium", "High"), class = "factor"), 
#   Species = structure(c(1L, 
#                         1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
#                         1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 
#                         2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
#                         2L, 2L, 2L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 
#                         3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 
#                         3L, 3L, 3L), 
#                       .Label = c("A", "B", "C"), class = "factor"), 
#   Log.Abundance = c(5.6, 
#                     4.49, 3.59, 3.61, 4.29, 5.27, 4.3, 3.29, 4.63, 3.69, 5.06, 4.02, 
#                     5.16, 4.62, 3.81, 4.49, 2.64, 4.83, 4.78, 4.23, 2.99, 0.3, -0.09, 
#                     0.39, 0.78, -0.76, -0.14, 0.66, 6.15, 4.67, 5.54, 5.16, 5.4, 
#                     4.39, 4.6, 5.4, 5.38, 5.95, 5.05, 4.47, 5.11, 4.66, 1.18, -0.76, 
#                     1.03, -0.42, 0.64, 0.79, 1.61, 0.24, -0.19, 1.08, 0.83, 0.63, 
#                     -2.03, -0.52, 3.93, 4.65, 4.39, 5.47, 5.4, 4.4, 5.83, 1.19, -0.03, 
#                     -0.07, 0.11, 0.8, 1.41, 0.85, -0.28, -0.71, 0.95, -0.13, -1.2, 
#                     1.74, -0.36, 0.42, -0.08, 0.6, -1.49, 0.33, 0.12, 0.79)), 
#   .Names = c("Pollution", "Species", "Log.Abundance"), 
#   row.names = c(NA, -84L), 
#   class = "data.frame")
# save(Pollution, file = '../data/Pollution.rdata')
