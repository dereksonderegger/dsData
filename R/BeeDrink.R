#' Drinking energetics of honeybees.
#' 
#' An entomologist conducted an experiment to understand the how 
#' much energy a honeybee expends while drinking liquids at different
#' temperatures and different viscosity of liquid. To control viscosity,
#' the researcher varied the amount of sucrose in the liquid (20,40 or 60%).
#' 
#' The data was provided from Dr. S. Buckman, USDA Bee Research Lab, Tucson, AZ.
#' 
#' @format A data frame with 24 rows and 3 variables:
#' \describe{
#'   \item{temp}{Temperature (in Celcius).}
#'   \item{sucrose}{Percent sucrose of the liquid where higher sucrose levels correspond to higher viscosity.}
#'   \item{energy}{The energy expended during drinking as joules/second.}
#' }
"BeeDrink"

# From Design of Experiments by Robert Kuehl
# energy <- c(3.1,3.7,4.7,    5.5,6.7, 7.3,      7.9,9.2,9.3,
#             6.0,6.9,7.5,    11.5,12.9,13.4,    17.5,15.8,14.7,
#             7.7,8.3,9.5,    15.7,14.3,15.9,    19.1,18.0,19.9)
# BeeDrink <- data.frame(temp = rep( c(20,30,40), each=9),
#                        sucrose = rep(c(20,40,60), each=3, times=3),
#                        energy=energy )
# save(BeeDrink, file = './data/BeeDrink.rdata')
