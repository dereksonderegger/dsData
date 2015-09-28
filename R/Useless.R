#' Logit function
#' 
#' The logit function
#' @param p A probability
#' @return x A real number
logit <- function(p){
  return( log( p/(1-p)))
} 

#' Inverse-Logit function
#' 
#' The inverse logit function
#' @param x A real number
#' @return p A probability
ilogit <- function(x){
  return( 1 / (exp(-x)+1) )
}