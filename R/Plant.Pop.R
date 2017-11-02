#' A simulated dataset of a population of plants.
#' 
#' The plants are in a 100 x 100 grid and display
#' a moderate amount of clustering. The grid is 
#' divided into 16 25x25 Quadrats, or 100 10x10 Plots.
#' The data is give as the number of individual plants
#' in a 1x1 grid cell. 
#' @format A data frame with 10,000 rows and 6 variables:
#' \describe{
#'   \item{x}{The x coordinate of a 1x1 grid cell.}
#'   \item{y}{The y coordinate of a 1x1 grid cell.}
#'   \item{Quadrant}{Which 25x25 quadrant the grid cell is in [a-p].}
#'   \item{Plot}{Which 10x10 plot the grid cell is in [1-100].}
#'   \item{Site}{A unique identifier of the 1x1 grid cell [1 - 10,000].}
#'   \item{count}{The number of plants within a site.}
#' }
#' @examples
#' library(ggplot2)
#' library(dplyr)
#' data(Plant.Pop)
#' 
#' NonZero <- Plant.Pop %>% filter( count >= 1 )
#' ggplot( NonZero, aes(x=x, y=y, color=count)) + 
#'   geom_point(alpha=.3)
#' 
#' # Aggregate over quadrants
#' Plant.Quads <- Plant.Pop %>%
#'   group_by(Quadrant) %>%
#'   summarize(x=mean(x),
#'             y=mean(y),
#'             count=sum(count))   
#' ggplot(Plant.Quads, aes(x=x, y=y)) +
#'   geom_point(data=Plant.Pop, alpha=.3, aes(color=count)) +
#'   geom_text(aes(label=Quadrant))  
#'   
#' # Aggregate over plots
#' Plant.Plots <- Plant.Pop %>%
#'   group_by(Plot) %>%
#'   summarize(x=mean(x),
#'             y=mean(y),
#'             count=sum(count))   
#' ggplot(Plant.Plots, aes(x=x, y=y)) +
#'   geom_point(data=Plant.Pop, alpha=.3, aes(color=count)) +
#'   geom_text(aes(label=Plot))  
"Plant.Pop"

# set.seed(456754)
# library(spatstat)
# l <- 100
# D <- .1
# x1 <- runifpoint(D/2*l^2, win = owin(c(0,l), c(0,l)))
# x2 <- rThomas(2*D/10, sigma=2, mu=10, win=owin(c(0,l),c(0,l)))
# X <- superimpose(x1, x2)
# 
# library(ggplot2)
# library(dplyr)
# Plant.Pop <- data.frame(x=X$x, y=X$y)
# ggplot(Plant.Pop, aes(x=x, y=y)) +
#   geom_point(alpha=.3)
# 
# Plant.Pop <- Plant.Pop %>%
#   mutate(x = floor(x),
#          y = floor(y)) %>%
#   group_by(x, y) %>%
#   summarize(count = n())
# zeros <- expand.grid(x=0:(l-1), y=0:(l-1))
# Plant.Pop <- merge(Plant.Pop, zeros, all=TRUE)
# Plant.Pop$count[which(is.na(Plant.Pop$count))] <- 0
# Plant.Pop <- Plant.Pop %>%
#   arrange(x, y)
# # Define 25x25 Qudrants (16 of these)
# Plant.Pop$group.x <- cut(Plant.Pop$x, breaks = seq(0,100,25), include.lowest=TRUE)
# Plant.Pop$group.y <- cut(Plant.Pop$y, breaks = seq(0,100,25), include.lowest=TRUE)
# Plant.Pop$Quadrant <- interaction(Plant.Pop$group.x, Plant.Pop$group.y)
# levels(Plant.Pop$Quadrant) <- letters[1:16]
# 
# # Define 10x10 plots (100 of these)
# Plant.Pop$group.x <- cut(Plant.Pop$x, breaks = seq(0,100,10), include.lowest=TRUE)
# Plant.Pop$group.y <- cut(Plant.Pop$y, breaks = seq(0,100,10), include.lowest=TRUE)
# Plant.Pop$Plot <- interaction(Plant.Pop$group.x, Plant.Pop$group.y)
# levels(Plant.Pop$Plot) <- 1:100
# 
# # define the sites
# Plant.Pop$Site <- 1:10000
# 
# Plant.Pop <- select(Plant.Pop, x, y, Quadrant, Plot, Site, count)
# str(Plant.Pop)
# 
# use_data(Plan.Pop, overwrite=TRUE)


