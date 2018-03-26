#' Testing Cabinet Drawer Joinery Methods (Simulated Data!)
#'
#' One defining distinction between cheap furniture and high quality
#' furniture is the method in which pieces of wood are joined. For
#' making cabinet drawers, a range of wood products and joinery methods 
#' used. Often plywood is used, but softwoods like pine or hardwoods are
#' also used. For joining the sides of the boxes, we could use just 
#' glue-and-screw the pieces together using a butt-joint, or we could be 
#' use other more refined techniques like the box-joint or dovetail joint.
#' 
#' @format A data frame with 16 observations of 2 variables.
#' \describe{
#'   \item{Type}{A factor describing the joint type.}
#'   \item{Force}{The force required to break the joint (in pounds).}
#'   }
#'   
#' @details 
#' Going into the experiment, it is expected that plywood using glue-and-screw
#' butt-joints will be poor, but it isn't clear how well the other joint types 
#' will compare when using plywood vs natural woods.
#' 
#' @examples 
#' ggplot2::ggplot(PocketHoles, aes(x=Type, y=Force)) + geom_point()
'Joinery'


# library(devtools)
# library(tidyverse)
# 
# seed <- floor( runif(1, 0, 1e6)); seed;
# set.seed(seed);  set.seed(871467);
# 
# #          Int   Box  DT  Pine  Maple  Box:Pine  DT:Pine  Box:Maple  DT:Maple
# beta <- c(  10,  40,  40,  20,   30,      20,      25,      35,         30 )  
# sigma <- 10
# 
# Joinery <- expand.grid( Type=c('Butt','Box','DoveTail'),
#                         Wood=c('Plywood','Pine','Maple'), 
#                         rep=1:4 ) %>%
#     mutate( Ey = model.matrix(~Type*Wood, data=.) %*% beta %>% as.vector() ) %>%
#     mutate( Force = Ey + rnorm(n(), sd=sigma) ) %>%
#     mutate( Type = forcats::fct_infreq(Type) ) %>%
#     mutate( Wood = forcats::fct_infreq(Wood) )
# 
# ggplot(Joinery, aes(x=Type, y=Force, color=Wood)) +
#   geom_point()
# 
# use_data(Joinery, overwrite=TRUE)


