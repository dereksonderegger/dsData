# library(tidyverse)
# 
# n = 200
# num_w = 10
# num_x = 5
# sd=1
# 
# X <- NULL
# for(j in 1:(num_x+num_w)){
#   X <- cbind(X, runif(n, 0,1))
# }
# data <- X %>% as.data.frame()
# 
# data <- data %>%
#   mutate( Ey = 2 + 1*V1 + .3*V2 + -.2*V3 + sin(V4*pi) + 1/(1+exp(-(V5-.5)*2)) )
# #  mutate( Ey =  1/(1+exp(-(V5-.5)*13)) )
#   
# data %>% select(Ey, V1:V5) %>% pairs()
# 
# Ey <- cbind(rep(1,n),X) %*% c(beta0,beta)
# for(j in 1:num_w){
#   X <- cbind(X, runif(n, 0,1))
# }
# colnames(X) <- c( paste('x',1:num_x,sep=''), paste('w',1:num_w,sep='') )
# y <- Ey + rnorm(n, sd=sd)  
# 
# 
