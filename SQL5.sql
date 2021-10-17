CREATE TABLE cricket(
	id INT ,
    player_name VARCHAR(20),
    runs INT,
    popularity INT,
    id_0 INT,
    player_name_0 VARCHAR(20),
    runs_0 INT,
    charisma INT
);
INSERT INTO cricket VALUES (1,'virat',50,79,1,'virat',50,49);
INSERT INTO cricket VALUES (2,'rohit',64,89,2,'rohit',64,56);
INSERT INTO cricket VALUES (3,'dhoni',83,87,3,'dhoni',83,73);
INSERT INTO cricket VALUES (4,'sachin',100,67,4,'sachin',100,91);
INSERT INTO cricket VALUES (5,'sehwag',28,90,5,'sehwag',28,71);
INSERT INTO cricket (id,player_name,runs,popularity) VALUES (5,'dhawan',34,45);
INSERT INTO cricket (id,player_name,runs,popularity) VALUES (5,'pujara',56,23);
INSERT INTO cricket (id,player_name,runs,popularity) VALUES (5,'rahane',4,30);
SET SQL_SAFE_UPDATES=0;
UPDATE cricket SET id=6 WHERE player_name='dhawan';
UPDATE cricket SET id=7 WHERE player_name='pujara';
UPDATE cricket SET id=8 WHERE player_name='rahane';
SELECT * FROM cricket;

-- EXTRACT THE PLAYERID AND PLAYERNAME OF THE DATA WHERE CHARISMA VALUE IS ZERO.
SELECT ID,PLAYER_NAME FROM cricket WHERE cricket.charisma IS NULL;
-- EXTRACT PLAYERID , PLAYERNAME, CHARISMA WHERE THE CHARISMA IS GREATER THAN 25.
SELECT id,player_name,charisma FROM cricket WHERE cricket.charisma > (25);