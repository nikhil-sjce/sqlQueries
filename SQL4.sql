CREATE TABLE cricket1(
	id INT ,
    player_name VARCHAR(20),
    runs INT,
    popularity INT
);
CREATE TABLE cricket2(
	id INT,
    player_name VARCHAR(20),
    runs INT,
    charisma INT
);
INSERT INTO cricket1 (id,player_name,runs,popularity) VALUES (1,'virat','50',61);
INSERT INTO cricket1 (id,player_name,runs,popularity) VALUES (2,'rohit','41',39);
INSERT INTO cricket1 (id,player_name,runs,popularity) VALUES (3,'dhoni','34',59);
INSERT INTO cricket1 (id,player_name,runs,popularity) VALUES (4,'sachin','59',60);
INSERT INTO cricket1 (id,player_name,runs,popularity) VALUES (5,'yuvraj','57',45);

INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (1,'virat','50',61);
INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (2,'rohit','41',39);
INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (3,'dhoni','34',59);
INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (4,'sachin','59',60);
INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (5,'yuvraj','57',45);
INSERT INTO cricket2 (id,player_name,runs,charisma) VALUES (6,'sehwag','49',44);

SELECT * FROM cricket1;
SELECT * FROM cricket2;

-- ALL THE PLAYERS WHO WERE PRESENT IN THE TEST MATCH. (the table which is written first its data will be reflected)
SELECT * FROM cricket2 UNION SELECT * FROM cricket1;
-- ALL PLAYERS FROM CRICKET1 HAVING POPULARITY GREATER THAN AVERAGE POPULARITY.
SELECT AVG(popularity) FROM cricket1;
SELECT player_name,popularity FROM cricket1 WHERE popularity > (SELECT AVG(popularity) FROM cricket1);
-- FIND PLAYERID AND PLAYERNAME COMMON IN CRICKET1 AND CRICKET2 (LIST IS COMPARED WITH IN WHILE DATA IS COMPARED BY INEQUALITY)
SELECT id,player_name FROM 	cricket1 WHERE cricket1.id IN (SELECT id FROM cricket2);
-- DISPLAY PLAYERID,PLAYERNAME,RUNS FROM CRICET1 WHERE RUNS SCORED IS GREATER THAN AVERAGE RUNS.
SELECT AVG(runs) FROM cricket1;
SELECT id,player_name,runs FROM cricket1 WHERE cricket1.runs > (SELECT AVG(runs) FROM cricket1);
-- DISPLAY PLAYERID,PLAYERNAME,RUNS FROM CRICET1 WHERE RUNS SCORED IS GREATER THAN 50 RUNS.
SELECT id,player_name,runs FROM cricket1 WHERE cricket1.runs > 50;
-- WRITE A QUERY TO EXTRACT ALL THE COLUMNS FROM CRICKET1 WHERE THE NAME STARTS FROM Y AND ENDS WITH J (STRING PATTERN IS CHECKED THROUGH LIKE CLAUSE)
SELECT * FROM cricket1 WHERE cricket1.player_name LIKE 'y%j';
-- WRITE A QUERY TO EXTRACT ALL THE COLUMNS FROM CRICKET1 WHERE THE NAME NOT ENDS WITH T (STRING PATTERN IS CHECKED THROUGH NOT LIKE CLAUSE ALSO)
SELECT * FROM cricket1 WHERE cricket1.player_name NOT LIKE '%t';