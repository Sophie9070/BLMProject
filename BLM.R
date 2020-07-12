setwd("/home/ubuntu")

#install.packages("rtweet") #rtweet
#install.packages("stringr")
#install.packages("twitteR")
library(stringr)
#library(twitteR)
library(rtweet)

#you always need to use library(packagename) when you run code in Rstudio that needs that package

consumer_key <- "jboQWgOV0Uxr3fFXaBzW8hrCv"

consumer_secret <- "lrghyxXjy0yNq0A74fF5eon121zDRlwY4nzemN2PgiemfEot9g"

access_token <- "1214357258-pD38Yxa9DFa6PJBZvThBRFDOrRriSFdnDWyQwHQ"

access_secret <- "4jUlIm2COUgEttRobp0y7YgUjxD8tisEhDPOBkuNa1iBA"
#setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)

twittertoken <- create_token(
  app = "research5900MIS",
  consumer_key,
  consumer_secret,
  access_token,
  access_secret
)

tweetsBLM <- search_tweets("BlackLivesMatter OR BLM", n =200, type = "recent", lang = "en", include_rts = TRUE)

tweetsBLM2 = data.frame(lapply(tweetsBLM, as.character), stringsAsFactors=FALSE)
currentdate = Sys.time()
tweetsBLMName <- paste("tweetsBLM2",currentdate,".csv",sep="")
tweetsBLMName<- str_remove_all(tweetsBLMName, ":")
write.csv(tweetsBLM2, file = tweetsBLMName)

#x <- read_csv("tweetsBLM22020-06-10 133002.csv")
#View(x)
