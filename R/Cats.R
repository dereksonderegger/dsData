#' Cat Behaviors
#' 
#' A simulated dataset describing how my time my cats spend outside
#' relative to the outside temperature.
#' 
#' @format A data frame with 60 rows and 3 variables:
#' \describe{
#'   \item{Temperature}{Outside temperature (in Celcius).}
#'   \item{Time}{The amount of time spent outside (in minutes).}
#'   \item{Cat}{A categorical variable denoting which cat was outside.}
#'   }
"Cats"

# Cats <-
#   structure(list(
#     Temperature = c(18.3, 16.2, 29.9, 11.8, 4.6, 11.7, 
#      20.1, 15.9, 14.4, 15.8, 25.1, 25.1, 26.9, 6.7, 5.7, 14, 23.6, 
#      7.2, 17.1, 20.7, 18.3, 16.2, 29.9, 11.8, 4.6, 11.7, 20.1, 15.9, 
#      14.4, 15.8, 25.1, 25.1, 26.9, 6.7, 5.7, 14, 23.6, 7.2, 17.1, 
#      20.7, 18.3, 16.2, 29.9, 11.8, 4.6, 11.7, 20.1, 15.9, 14.4, 15.8, 
#      25.1, 25.1, 26.9, 6.7, 5.7, 14, 23.6, 7.2, 17.1, 20.7), 
#     Time = c(69.5, 24.4, 1281.8, 8, 8.9, 15.8, 52.6, 74.8, 39.5, 21.8, 456.3, 40.7, 
#              94.8, 9.2, 7.3, 291.2, 47.1, 5.3, 33.6, 201.5, 5.3, 6.6, 18, 
#              2.4, 1.1, 1.2, 4.6, 9.6, 4.7, 1.9, 5.7, 4.9, 18.1, 0.8, 0.3, 
#              3.6, 45.9, 0.9, 7.9, 22.9, 27.7, 1.2, 56.1, 3.9, 2.9, 2.5, 2.9, 
#              5.2, 1.5, 4.5, 17.9, 44.3, 30.7, 1.1, 5.3, 0.3, 5, 1.4, 1.9, 
#              25.8), 
#     Cat = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
#                       1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 3L, 3L, 3L, 3L, 3L, 
#                       3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 3L, 2L, 
#                       2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
#                       2L, 2L, 2L), 
#                     .Label = c("Beau", "Kaylee", "Tess"), class = "factor")), 
#     .Names = c("Temperature", "Time", "Cat"), 
#     row.names = c(NA, -60L), class = "data.frame")
# save(Cats, file='../data/Cats.rdata')
