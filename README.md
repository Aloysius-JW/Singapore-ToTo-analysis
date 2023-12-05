This is my analysis/dashboard for every Singapore favourite lottery game, TOTO. 
[Link to the visualisation] (https://public.tableau.com/app/profile/aloysius.ang/viz/TOTO_17011785890420/Statistics)

# Project Overview
I have been curious about the frequency of the numbers that were coming out for TOTO. Therefore, I have decided to create a dashboard that will showcase the numbers that are being drawn. It will show the following features:
-	Top N and bottom N of the frequency of the numbers, having the choice of separate tables for additional and regular, or separately
-	Total prizes that are given out, the total number of winners and the amount of winning per winners
-	An additional dashboard showing the history of prize money and numbers that came out for any single day
I believe I will gain lots of insights by completing this project, and be able to continue to use this dashboards if I ever go into buying TOTO

## Things I used and installed
Before this project, I have installed Tableau public software to create the visualisation. I have used [https://sqliteonline.com/](https://sqliteonline.com/) for my SQL needs. I also acquired the data from Kaggle. I have uploaded the dataset used, as well as the different tables that I have made using sqliteonline in the repository.

##Background for TOTO
According to Wikipedia, 
Toto was established to control widespread illegal gambling in Singapore during the 1960s. A manual version of Toto was launched on 9 June 1968. In 1981, "snowballing" was introduced. It allowed the top prize to increase from draw to draw. The system entry mode is introduced so multiple bets can be made on a single coupon.
The latest iteration is a ‘6 out-of 49’ format, where customers that have all 6 of their number drawn will win the jackpot.
There are many iterations of the game throughout the years. 
-	In 1986, it was based on a ‘5 out-of 49’ format 
-	In 1988, it was based on a ‘6 out-of 42’ format 
-	In 1997, it was based on a ‘6 out-of 45’ format 
##Current method of play
Buyers pick at least 6 numbers, anywhere between 1 to 49. The winning numbers drawn at a total of 7 numbers, 6 regular numbers and 1 additional number. The smallest prize is won when 3 numbers of a single buyer ticket is drawn in the category of the regular number. The jackpot is where all 6 of their number is drawn in the category of the regular numbers.
This is the current payout and odds of winning
| Prize Group | Matches | Prize | Odds of winning|
| ----------- | ----------- |----------- |----------- |
| 1 (Jackpot) | 6 numbers | 38% of prize pool      | 1 in 13,983,816       |
| 2   | 5 numbers plus the additional number       | 8% of prize pool       | 1 in 2,330,636        |
| 3   | 5 numbers | 5.5% of prize pool | 1 in 55,491|
| 4   | 4 numbers plus the additional number | 3% of prize pool | 1 in 22,197|
| 5   | 4 numbers | $50 per winning combination | 1 in 1,083|
| 6   | 3 numbers plus the additional number | $25 per winning combination | 1 in 812|
| 7   | 3 numbers | $10 per winning combination | 1 in 61|

#Today’s analysis
##First step: Sourcing and cleaning of data
I found a dataset on [Kaggle] (https://www.kaggle.com/datasets/calven22/singapore-lottery-numbers) that have the data I needed for this dashboard. I have the SQL log files in this repository if needed to check. I have created several tables by transposing the dataset to suit the needs of the dashboard. I also made the decision to only use the data from 2014 May onwards as it is when the newest iteration of TOTO is put into place
##Next step: the visualisation
I went to work and created several visualisations for the TOTO analysis. From 2014 to 2022, the amount of prize money given is quite eye opening. Around 3.7 billion Singapore dollars were given out as prize money, and there are a total of 130 million winners throughout these 8 years. I would think with this many winners and the large prize pool, no wonder TOTO is one of the favourite lottery of Singaporeans.
 To my surprise, the result shows that there is a disparity between the highest occurring number vs the lowest occurring number. The number 40, 15, 5, 36, 44 occurs 117,110,109,107 and 106 times respectively. The numbers 45,42,16,33,34 occurs 71, 79,80,81,82 times respectively. At eye level, it looks like there is a significant difference between the highest and the lowest occurring number and it would be something to look into. The integrity of TOTO being completely randomise will come into question if it’s true.

Having said that, I am armed with the knowledge of the highest and lowest occurring numbers. If I am a buyer, I have 2 ways to go about buying my tickets. 

If I’m subscribed to the “rule of large numbers” school of thought where number occurring will go closer to the mean as more games are played, I would choose the current lowest occurring numbers to “increase” my odds of winning.
If I’m subscribed to the fact that there is a bias for which number to be drawn, I would buy the numbers with the highest occurrences.  
#Conclusion
I believe that these data visualisations will help someone see the scale of how big TOTO in Singapore is. Also, I believe it can help someone to be more informed for their next TOTO tickets purchase. 
I will update this project if there is any feedback that comes my way. Thank you for reading!
