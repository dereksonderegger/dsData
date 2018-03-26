#' A simulated dataset about zombies solving a maze.
#'
#' This simulated dataset imagines a study where captured zombies are presented
#' with a maze with the researchers goal to measure the zombies remaining intelligence. 
#' We imagine that foreach zombie, we know the time since infection as well as the 
#' zombies sex.
#' 
#' The zombie is released and we measure the time until the zombie reaches the 
#' treat in the center of the maze. We expect that zombies that have been infected 
#' for longer will be dumber and move more slowly. 
#' 
#' @format A data frame with 39 observations of 4 variables.
#' \describe{
#'   \item{Zombie_ID}{A unique identifier for each zombie.}
#'   \item{Sex}{A factor describing the sex, Male or Female.}
#'   \item{Age}{The number of days since the zombie was first infected.}
#'   \item{Time}{The amount of time in the maze.}}
'Zombies' 


# library(devtools)
# library(tidyverse)
# library(ggfortify)
# 
# seed <- floor( runif(1, 0, 1e6)); seed;
# set.seed(seed);  set.seed(146884);
# 
# #          Int, Age, SexMale, Age:SexMale
# beta  <- c( 2,   15,    100,       -7) / 40
# sigma <- 1
# ni    <- 20
# 
# Zombies <- expand.grid( Sex=factor(c('Male','Female')), rep=1:ni ) %>%
#   mutate( Zombie_ID = 1:n() ) %>%
#   mutate( Age = rgamma(n(), shape=2, scale=3) + 2 ) %>%
#   mutate( Ey = model.matrix(~Age*Sex, data=.) %*% beta %>% as.vector() ) %>%
#   mutate( Time = Ey + rnorm(n(), sd=sigma) ) %>%
#   mutate( Ey = exp(Ey), Time = exp(Time) ) %>%
#   filter( Time < 2000 ) %>%
#   arrange(Sex, Age)
# 
# P1 <- ggplot(Zombies, aes(x=Age, color=Sex)) +
#   geom_point(aes(y=log(Time))) +
#   geom_line(aes(y=log(Ey)))
# P2 <- ggplot(Zombies, aes(x=Age, color=Sex)) +
#   geom_point(aes(y=Time)) +
#   geom_line(aes(y=Ey))
# STA578::multiplot(P1, P2)
# 
# model <- lm( Time ~ Age*Sex, data=Zombies);
# autoplot(model, which=1)
# MASS::boxcox(model)
# 
# model <- lm( log(Time) ~ Age*Sex, data=Zombies )
# summary(model)
# 
# Zombies <- Zombies %>% select( Zombie_ID, Sex, Age, Time )
# use_data(Zombies, overwrite=TRUE)