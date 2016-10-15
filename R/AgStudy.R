#' Simulated Agriculure Study
#' 
#' This dataset describes a ficticous split-plot agriculture study in which we have
#' eight plots where we can only apply one of two irrigation level (low/high).  
#' Within each plot, we have four sub-plots where we can apply a fertilizer 
#' treatment and we have two fertilizer treatments (low/high).  Within each 
#' sub-plot we have five replicate samples.
#' 
#' @format A data.frame with 96 observations
#' \describe{
#'     \item plot Which plot the observation comes from
#'     \item subplot Which subplot the observation comes from
#'     \item rep The replicate number within subplot
#'     \item Irrigation The irrigation level of the plot
#'     \item Fertilizer The fertilizer level of the subplot
#' } 
#' @examples
#' ggplot(AgData, aes(x=Fertilizer, y=yield, color=Irrigation)) + 
#'   geom_point() +
#'   facet_wrap( ~ plot, ncol=4, labeller=label_both)
#' 
"AgStudy"


# set.seed(345)
# data <- expand.grid(plot=factor(1:8), subplot=factor(1:4), rep=factor(1:5)) %>% 
#   arrange(plot, subplot, rep) %>%
#   cbind( Irrigation = rep(0:1, each=16*5),
#          Fertilizer = rep(0:1, times=16, each=5)) %>%
#   mutate( Irrigation = factor(Irrigation, labels=c('Low','High' )),
#           Fertilizer = factor(Fertilizer, labels=c('Low','High')))
# X <- model.matrix( ~ Irrigation + Fertilizer, data=data)
# beta <- c(20, 3, 5)
# 
# y <- X %*% beta + 
#   model.matrix(~-1+plot,data=data) %*% rnorm(8, sd=3)  +
#   model.matrix(~-1+plot:subplot, data=data) %*% rnorm(8*4, sd=2) +
#   model.matrix(~-1+plot:subplot:rep, data=data) %*% rnorm(8*4*5, sd=1)
# data$yield <- as.vector(y)
# 
# AgData <- data
# save(AgData, file='../data/AgData.rdata')
