#' A simulated dataset of oyster catch 
#' 
#' This data describes an oyster harvest. Each observation corresponds to
#' an hectare of oyster beds and the density describes the intensity in which
#' the bed was harvested (number of passes by a havesting boat) and the Harvest is 
#' the number of bushels obtained.
#' @format A data frame with 21 rows and 2 variables:
#' \describe{
#'   \item{Density}{Number of boat passes through the oyster bed.}
#'   \item{Harvest}{The number of bushels of oysters harvested.}
#' }
"Oysters"

# Oysters <-structure(list(
#     Density = c(50, 60, 70, 80, 90, 100, 110, 120, 
#                 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250),
#     Harvest = c(57.07, 50.67, 74.82, 96.51, 98.29, 92.52, 122.58, 
#                  103.47, 109.44, 163.12, 120.48, 146.42, 133.68, 128.06, 144.84, 
#                  147.83, 116.52, 136.48, 111.76, 82.37, 98.61)), 
#     .Names = c("Density", "Harvest"), 
#     row.names = c(NA, -21L), class = "data.frame")
# save(Oysters, file = '../data/Oysters.rdata')
