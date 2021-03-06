% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Hemocrit.R
\docType{data}
\name{Hemocrit}
\alias{Hemocrit}
\title{Hemocrit levels}
\format{
A data frame with 200 observations, with two columns 
\describe{
   \item{hemocrit}{The riders hemocrit level.}
   \item{status}{Whether the rider was "clean" or a "cheater".}}
}
\usage{
Hemocrit
}
\description{
A data set of ficticional cyclists who might be doping. The predictor covariate
is the hemocrit level, or the volume percentage of the blood that is red
blood cells.  The higher the level, the better the athlete performs at
endurance sports. The amount is typically around 45 for healthy adult males
and around 40 for healthy adult females.
}
\examples{
library(ggplot2)
ggplot(Hemocrit, aes(x=hemocrit, y=status)) + geom_point()
}
\keyword{datasets}
