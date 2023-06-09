#!/bin/bash
curl -s https://api.tweetfeed.live/v1/week > /home/rooster/1.txt
 jq -r '.[] | select(.type == "ip") | .value as $value | .tags[] | [$value,.] | @csv' /home/rooster/1.txt  > /home/rooster/IPtemp33.csv
sed 's/\#//g' /home/rooster/IPtemp33.csv >> /home/rooster/TweetFeed/IPtemp65.csv
sed 's/$/,"Tweet Feed IOC Test"/' /home/rooster/TweetFeed/IPtemp65.csv >> /home/rooster/TweetFeed/IPtemp66.csv
git add .
git commit -m "commit"
git push https://github.com/Reman2k/ioc.git master


