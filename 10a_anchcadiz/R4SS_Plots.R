## installing and getting the code set up
#devtools::install_github("r4ss/r4ss")
#install.packages('r4ss') # download package, same as using menu in Rgui
library(r4ss) # load package into current session
dir <- (paste(getwd(),sep=""))
setwd(dir)


# it's useful to create a variable for the directory with the model output


# read the model output and print diagnostic messages 
replist <- SS_output(dir = dir, 
                     verbose = TRUE,
                     printstats = TRUE)



SS_plots(replist, uncertainty=F,datplot = F, png=T, aalresids = F,btarg=0.60, minbthresh=0.25, forecast=F)

