-- TABLE
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE DF(
  Draw INT,
  Date TEXT,
  Winning_Number_1 INT,
  Winning_Number_2 INT,
  Winning_Number_3 INT,
  Winning_Number_4 INT,
  Winning_Number_5 INT,
  Winning_Number_6 INT,
  Additional_Number_ INT,
  From_Last TEXT,
  Odd INT,
  Even INT,
  "_1-10" INT,
  "_11-20" INT,
  "_21-30" INT,
  "_31-40" INT,
  "_41-50" INT,
  Division_1_Winners INT,
  Division_1_Prize INT,
  Division_2_Winners INT,
  Division_2_Prize INT,
  Division_3_Winners INT,
  Division_3_Prize INT,
  Division_4_Winners INT,
  Division_4_Prize INT,
  Division_5_Winners INT,
  Division_5_Prize INT,
  Division_6_Winners INT,
  Division_6_Prize INT,
  Division_7_Winners INT,
  Division_7_Prize INT
, division_1_total_amount INT, division_2_total_amount INT, division_3_total_amount INT, division_4_total_amount INT, division_5_total_amount INT, division_6_total_amount INT, division_7_total_amount INT, number_of_winners INT, total_amount_given INT);
CREATE TABLE Numbers_only(
  Draw INT,
  Date TEXT,
  type,
  VALUE INT
);
CREATE TABLE 'TotoWinningNumbers' ('Draw' INTEGER,'Date' TEXT,'Winning_Number_1' INTEGER,'Winning_Number_2' INTEGER,'Winning_Number_3' INTEGER,'Winning_Number_4' INTEGER,'Winning_Number_5' INTEGER,'Winning_Number_6' INTEGER,'Additional_Number_' INTEGER,'From_Last' TEXT,'Odd' INTEGER,'Even' INTEGER,'_1-10' INTEGER,'_11-20' INTEGER,'_21-30' INTEGER,'_31-40' INTEGER,'_41-50' INTEGER,'Division_1_Winners' INTEGER,'Division_1_Prize' INTEGER,'Division_2_Winners' INTEGER,'Division_2_Prize' INTEGER,'Division_3_Winners' INTEGER,'Division_3_Prize' INTEGER,'Division_4_Winners' INTEGER,'Division_4_Prize' INTEGER,'Division_5_Winners' INTEGER,'Division_5_Prize' INTEGER,'Division_6_Winners' INTEGER,'Division_6_Prize' INTEGER,'Division_7_Winners' INTEGER,'Division_7_Prize' INTEGER);
CREATE TABLE winners_prizes(
  Draw INT,
  Date TEXT,
  Division_1_Winners INT,
  Division_1_Prize INT,
  Division_2_Winners INT,
  Division_2_Prize INT,
  Division_3_Winners INT,
  Division_3_Prize INT,
  Division_4_Winners INT,
  Division_4_Prize INT,
  Division_5_Winners INT,
  Division_5_Prize INT,
  Division_6_Winners INT,
  Division_6_Prize INT,
  Division_7_Winners INT,
  Division_7_Prize INT,
  division_1_total_amount INT,
  division_2_total_amount INT,
  division_3_total_amount INT,
  division_4_total_amount INT,
  division_5_total_amount INT,
  division_6_total_amount INT,
  division_7_total_amount INT,
  number_of_winners INT,
  total_amount_given INT
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
