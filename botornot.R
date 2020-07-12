
#install.packages("tweetbotornot")
## install remotes if not already
#if (!requireNamespace("remotes", quietly = TRUE)) {
#install.packages("remotes")
#}

#install.packages("devtools")

#devtools::install_github("mkearney/tweetbotornot")

library(tweetbotornot)

#install.packages("cronR")
#install.packages("pacman")
library(pacman)
p_install_gh("bnosac/cronR")
p_load('miniUI')
p_load('shiny')
p_load('shinyFiles')

library(readr)
BLMusers <- read_csv("BLMusers.csv") #change accordingly if using Right side

BLMuserstest <- BLMusers$screen_name[1:150] # botusers a csv I imported of all the screennames, screen_name is a column name
data1 <- tweetbotornot(BLMuserstest)

BLMdata = data.frame(lapply(data1, as.character), stringsAsFactors=FALSE)
currentdate = Sys.time()
BLMDataName <- paste("BLMdata",currentdate,".csv",sep="")
write.csv(BLMdata, file = BLMDataName)

BLMusers <- BLMusers[-c(1:150),, drop = FALSE] #removes rows 1-180
write.csv(BLMusers, "BLMusers.csv")



