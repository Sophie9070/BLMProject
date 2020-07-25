# BLMProject
In order to determine if there are more bots on the conservative side vs the progressive side on twitter, 
I tracked 200 tweets every 30 minutes that mentioned "George Floyd" or "Black Lives Matter" or "BLM" 
as well as another 200 tweets every 30 minutes that mentioned "Trump2020" and "AllLivesMatter" using Twitter's API on R. 
After collecting the tweets and the users, I checked 5000 users on each side using the BotOrNot API. 
I used an ec2 instance on AWS educate to write my code on an RStudio browser and then I used Terminal to schedule the Cronjob that ran the program.
I also used the application Exploratory to easily filter the screennames in order to test the relevant screennames in the BotOrNot API.
