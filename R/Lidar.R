#' Data from a lidar ranging experiment
#'
#' The observations from a light detection and ranging (LIDAR) experiment. LIDAR 
#' uses the reflection of laser-emitted light to detect chemical compounds in the 
#' atmosphere. This technique is used in monitoring many atmospheric pollutants of 
#' importance. In this experiment, one laser source has a frequency tuned to the 
#' resonance frequency of mercury, while the second laser had a different frequency. 
#' 
#' The horizonatal variable is \code{range}, while the response variable is \code{logratio} 
#' which is the log ratio of the light from the different lasers. If mercury is 
#' present at a particular range, then the light from the laser tuned to the 
#' mercury frequency should be absorbed and the ratio of light from the two 
#' lasers observed in the reciever should drop. Of primary interest is 
#' inflection point where the ratio drops from approximately equal from the two
#' sources, to being dominated by just one source (the non-mercury tuned frequence).
#' 
#' 
#' @format A data frame with 221 observations of 2 variables.
#' \describe{
#'   \item{range}{The distance travelled before the light is reflected back to its source.}
#'   \item{logratio}{The logarithm of the ratio of received light from the two laser sources.}}
#' @references 
#' Sigrist, M. (Ed.) (1994). \emph{Air Monitoring by Spectroscopic Techniques} (Chemical Analysis Series, vol. 197). New York: Wiley.
#' 
#' Holst, U., Hössjer, O., Björklund, C., Ragnarson, P., and Edner, H. (1996). Locally weighted least squares kernel regression and statistical evaluation of LIDAR measurements. \emph{Environmetrics} 7: 401-416.
#' 
#' Ruppert, D., Wand, M.P. and Carroll, R.J. (2003) \emph{Semiparametric Regression} Cambridge University Press.
#' 
'lidar' 

# library(devtools)
# data('lidar', package='SemiPar')
# use_data(lidar, overwrite=TRUE)
# 