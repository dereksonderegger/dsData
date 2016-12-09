#' Automobile fuel economy data from the EPA for the 2015 model year. 
#' 
#' This dataset contains selected varaibles,  and removes vehicles with 
#' incomplete data (e.g. no drive train data). These data are a subset of the
#' package fueleconomy, with only the 2015 model year and the vehicle class
#' has been simplified.  The column Efficiency was calculated by calculating 
#' median City MPG and evaluating if a particular model was in the upper or lower
#' half of the City MPG. 
#' @format A data frame with :
#' \describe{
#'   \item{make}{Manufacturer}
#'   \item{model}{Model name}
#'   \item{class}{Vehicle size class}
#'   \item{drive}{Drive Train Type}
#'   \item{cyl}{Number of cylinders}
#'   \item{displ}{Engine Displacement}
#'   \item{fuel}{Required Fuel Type}
#'   \item{Efficient}{A binary response indicating if the the model has a higher city MPG than the 2015 median value. A 1 is higher than the median, a 0 is less.}
#' }
"vehicles"

# library(fueleconomy)
# library(dplyr)
# library(devtools)
# data('vehicles', package='fueleconomy')
# vehicles <- vehicles %>%
#   data.frame() %>%
#   filter(year == 2015) %>%
#   mutate( Efficient = ifelse( cty > median(cty), 1, 0),
#           class = factor(class)) %>%
#   select(-id, -hwy, -cty, -trans)
# # redefine the vehicle classes to have fewer of them.
# #vehicles$Class <- vehicles$class
# levels(vehicles$class) <- list(
#   Compact=c('Compact Cars', 'Subcompact Cars', 'Minicompact Cars'),
#   Car = c('Midsize Cars', 'Large Cars'),
#   SSUV = c('Small Sport Utility Vehicle 2WD',
#            'Small Sport Utility Vehicle 4WD',
#            'Small Station Wagons'),
#   SUV_T = c('Standard Sport Utility Vehicle 2WD',
#             'Standard Sport Utility Vehicle 4WD',
#             'Standard Pickup Trucks 2WD',
#             'Standard Pickup Trucks 4WD'),
#   Two_Seaters = c('Two Seaters'))
# use_data(vehicles, overwrite=TRUE)
# 
