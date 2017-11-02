#' An elevation map of Maunga Whau (Mt Eden). 
#' 
#' Maunga Whau (Mt Eden) one of about 50 volcanos 
#' in the Auckland volcanic field. This dataset takes the volcano dataset and
#' adds a primary sampling unit (PSU) and secondary sampling unit (SSU) onto
#' the data so that it is suitable for cluster sampling examples.
#'
#' @format A data frame with 4800 rows and 5 variables:
#' \describe{
#'   \item{x}{the x coordinate}
#'   \item{y}{the y coordinate}
#'   \item{elevation}{the elevation (in meters)}
#'   \item{PSU}{the primary sampling unit associated with an observation}
#'   \item{SSU}{the secondary sampling unit associated with an observation. These are 1-25 and nested within PSU}
#' }
#' @examples
#' library(ggplot2)
#' library(dplyr)
#' 
#' # Plot the elevation
#' ggplot(Eden, aes(x=x, y=y, fill=elevation)) + 
#'      geom_tile()   
#'      
#' # Plot the PSUs
#' PSU_labels <- Eden %>% group_by(PSU) %>% summarize(x=mean(x), y=mean(y), label=mean(PSU))
#' ggplot(Eden, aes(x=x, y=y, fill=(PSU-1) %/% 16)) + 
#'     geom_tile() +
#'     geom_text( data=PSU_labels, aes(label=label))
#'     
#' # PSUs modulus 4 and 16 are geographically contiguous
#' Eden.PSU <- Eden %>% group_by(PSU) %>% 
#'   summarize(x=mean(x), y=mean(y))  
#' ggplot(Eden, aes(x=x, y=y, fill=(PSU-1)%/%16)) +
#'   geom_tile() +
#'   geom_path(data=Eden.PSU)     
"Eden"

# library(reshape)
# Eden <- melt(volcano, varnames = c('x','y'))
# colnames(Eden) <- c('x','y','elevation')
# detach("package:reshape", unload=TRUE)
# library(ggplot2)
# library(dplyr)
# 
# # trim the border and define the PSUs and SSUs
# Eden2 <- Eden  %>%
#   filter( x<=80, y<=60 )  %>%       # trim the border
#   mutate( row.group = cut(x, 4),
#           col.group = cut(y, 3),
#           Unit.1 = as.integer(interaction(row.group, col.group)) ) %>%
#   group_by(Unit.1) %>%
#   mutate( row.group = cut(x, 2),
#           col.group = cut(y, 2),
#           Unit.2 = as.integer(interaction(row.group, col.group)) ) %>%
#   group_by(Unit.1, Unit.2) %>%
#   mutate( row.group = cut(x, 2),
#           col.group = cut(y, 2),
#           Unit.3 = as.integer(interaction(row.group, col.group)) ) %>%
#   group_by(Unit.1, Unit.2, Unit.3) %>%
#   mutate(Unit.4=1:n()) %>%
#   group_by() %>%
#   mutate( PSU=as.integer(interaction(Unit.3, Unit.2, Unit.1)),
#           SSU=Unit.4 ) %>%
#   arrange(PSU) %>%
#   select( PSU, SSU, elevation, x, y )
# 
# # verify the PSUs looks how they should
# label.data <- Eden2 %>% group_by(Unit.1) %>% summarize(x=mean(x), y=mean(y), label=mean(Unit.1))
# ggplot(Eden2, aes(x=x, y=y)) +
#   geom_tile(aes(fill=elevation)) +
#   geom_text( data=label.data, aes(label=label))
# 
# label.data <- Eden2 %>% group_by(PSU) %>% summarize(x=mean(x), y=mean(y), label=mean(PSU))
# ggplot(Eden2, aes(x=x, y=y)) +
#   geom_tile(aes(fill=elevation)) +
#   geom_text( data=label.data, aes(label=label))
# 
# Eden <- as.data.frame(Eden2)
# save(Eden, file = '../data/Eden.rdata')
# save(Eden, file = 'data/Eden.rdata')
