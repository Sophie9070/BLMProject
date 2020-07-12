# BLMProject
In order to determine if there are more bots on the right side vs the left side on twitter, 
I tracked 200 tweets every 30 minutes that mentioned "George Floyd" or "Black Lives Matter" or "BLM" 
as well as another 200 tweets every 30 minutes that mentioned "Trump2020" and "AllLivesMatter" using Twitter's API on R. 
After collecting the tweets and the users, I checked 5000 users on each side using the BotOrNot API. 
I used an ec2 on AWS to write my code on an RStudio browser and crontab to schedule running the program.
