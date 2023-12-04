-- creating another table that we can work with 
Create TABLE DF AS
SELECT *
From TotoWinningNumbers

SELECT *
FROM DF


-- check for draw being the primary key
SELECT draw, count(*)
from DF
GROUP BY draw
HAVING count(*) > 1

--From what i saw when i look at the table as a whole, the Division 7 winners are null from 6 October 2014 ownwards
--From my research, TOTO changed from 45 numbers to 49 numbers on the 7th of October 2014. 
--These 2 facts caused me to believe that the new TOTO system only started after 7th of October 2014

--As changing the numbers from 45 different numbers to 49 different numbers will impact the chances of each number being drawn, I have decided to delete all the rows before 7th of Octover 2014 (from draw 2994 and below)

DELETE from DF
Where Draw <= 2994

SELECT *
FROM DF


--checking for null values one by one, but will only put the noteworth null checking into the count

select *
from DF
Where date IS not NULL

select *
from DF
Where division_1_winners IS NOT NULL

select *
from DF
Where division_1_winners IS NULL


-- creating table for calculation
alter TABLE DF
ADD division_1_total_amount INT;
alter TABLE DF
ADD division_2_total_amount INT;
alter TABLE DF
ADD division_3_total_amount INT;
alter TABLE DF
ADD division_4_total_amount INT;
alter TABLE DF
ADD division_5_total_amount INT;
alter TABLE DF
ADD division_6_total_amount INT;
alter TABLE DF
ADD division_7_total_amount INT;
alter TABLE DF
ADD number_of_winners INT;


UPDATE DF
SET division_1_total_amount = division_1_winners * division_1_prize,
	division_2_total_amount = division_2_winners * division_2_prize,
	division_3_total_amount = division_3_winners * division_3_prize,
    division_4_total_amount = division_4_winners * division_4_prize,
    division_5_total_amount = division_5_winners * division_5_prize,
    division_6_total_amount = division_6_winners * division_6_prize,
    division_7_total_amount = division_7_winners * division_7_prize,
    number_of_winners = division_1_winners + division_2_winners + division_3_winners +division_4_winners+ division_5_winners + division_6_winners + division_7_winners
    

alter TABLE DF
ADD total_amount_given INT;

UPDATE DF
SET total_amount_given = division_1_total_amount + division_2_total_amount + division_3_total_amount +division_4_total_amount+ division_5_total_amount + division_6_total_amount + division_7_total_amount

select *
from DF

--Need to combine the winning numbers into 1 columns as they are all the same regardless of winning numbers 1 - 6.
--Except for additional, which i will indicate it under Type here
--Will establish a relationship between this table and the main table
Create TABLE Numbers_only AS
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_1 as Winning_Numbers
from DF
union ALL
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_2 as Winning_Numbers 
from DF
union ALL
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_3 as Winning_Numbers
from DF
union ALL
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_4 as Winning_Numbers
from DF
union ALL
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_5 as Winning_Numbers
from DF
union ALL
SELECT draw
		,date
        ,'winning' as type
        ,winning_number_6 as Winning_Numbers
from DF
union ALL
SELECT draw
		,date
        ,'additional' as type
        ,additional_number_ as Winning_Numbers
from DF


select *
from Numbers_only

--Creating another table transposed for group categories for a table i want to create 
Create TABLE Prize_winner AS
SELECT draw
		,date
        ,'Group 1' as Grouping
        ,division_1_winners as Number_of_winners
        ,division_1_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 2' as Grouping
        ,division_2_winners as Number_of_winners
        ,division_2_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 3' as Grouping
        ,division_3_winners as Number_of_winners
        ,division_3_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 4' as Grouping
        ,division_4_winners as Number_of_winners
        ,division_4_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 5' as Grouping
        ,division_5_winners as Number_of_winners
        ,division_5_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 6' as Grouping
        ,division_6_winners as Number_of_winners
        ,division_6_prize as Prize_money
from DF
union ALL
SELECT draw
		,date
        ,'Group 7' as Grouping
        ,division_7_winners as Number_of_winners
        ,division_7_prize as Prize_money
from DF

SELECT *
FROM Prize_winner
