#setwd("/home/ubuntu/")
#install.packages("rtweet") #rtweet
#install.packages("stringr")
#install.packages("twitteR")
library(stringr)
library(rtweet)

#you always need to use library(packagename) when you run code in Rstudio that needs that package

consumer_key <- "jboQWgOV0Uxr3fFXaBzW8hrCv"

consumer_secret <- "lrghyxXjy0yNq0A74fF5eon121zDRlwY4nzemN2PgiemfEot9g"

access_token <- "1214357258-pD38Yxa9DFa6PJBZvThBRFDOrRriSFdnDWyQwHQ"

access_secret <- "4jUlIm2COUgEttRobp0y7YgUjxD8tisEhDPOBkuNa1iBA"
#setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret) #if using package TwitteR

twittertoken <- create_token(
  app = "research5900MIS",
  consumer_key,
  consumer_secret,
  access_token,
  access_secret
)

tweetsBots <- search_tweets("#Trump2020 #AllLivesMatter", n= 200, lang = "en", type = "recent", include_rts = TRUE)


tweetsBLMBots = data.frame(lapply(tweetsBots, as.character), stringsAsFactors=FALSE)
currentdate = Sys.time()
tweetsBotName <- paste("tweetsBLMBots",currentdate,".csv",sep="")
tweetsBotName<- str_remove_all(tweetsBotName, ":")
write.csv(tweetsBLMBots, file = tweetsBotName)