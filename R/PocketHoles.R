#' Testing Wood Joinery Methods
#'
#' One defining distinction between cheap furniture and high quality
#' furniture is the method in which pieces of wood are joined. Low
#' quality furniture is often joined using "Pocket Holes" that are 
#' easy and fast to create. One woodworker decided to test several
#' different types of joints.
#' 
#' @format A data frame with 16 observations of 2 variables.
#' \describe{
#'   \item{Type}{A factor describing the joint type.}
#'   \item{Force}{The force required to break the joint (in pounds).}
#'   }
#'   
#' The purpose of this experiment was to compare pocket holes to two other 
#' common techniques. The dowel holes were deliberately done a bit poorly
#' to simulate a "lazy" woodworker that only uses two dowels, instead of 
#' three or four.
#' 
#' The joinery types are using pocket holes with 2 screws, 
#' a dowel joint with two dowels (using Titebond 3). The mortise and 
#' tenon joints were created using three different types of adhesive:
#' yellow glue, Titebond 3, or epoxy. 
#' 
#' @references \href{http://woodgears.ca/joint_strength/pockethole.html}{http://woodgears.ca/joint_strength/pockethole.html}
#' 
#' @examples ggplot(PocketHoles, aes(x=Type, y=Force)) + geom_point()
'PocketHoles'

# library(devtools)
# library(tidyverse)
# PocketHoles <- data.frame(
#   Type = rep(c("Pocket", "Dowel", "M&T - Yellow", "M&T - TB3", "M&T - Epoxy"),
#              times=c(4,3,3,3,3)),
#   Force = c(95,120, 75, 105, 160, 160, 149, 235, 235, 195, 190, 180, 235, 270, 225, 215))
# 
# PocketHoles <- PocketHoles %>%
#   mutate( Type = forcats::fct_reorder(Type, Force, mean) )
# 
# use_data(PocketHoles, overwrite=TRUE)