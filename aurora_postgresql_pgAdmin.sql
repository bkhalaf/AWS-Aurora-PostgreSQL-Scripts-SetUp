-- Drop tables if they exists 
DROP TABLE IF EXISTS song; 
DROP TABLE IF EXISTS artist; 

-- create artist table 
CREATE TABLE artist(
	Id int NOT NULL PRIMARY KEY
	,Name VARCHAR (255)
    ,Genre VARCHAR(255)
); 

-- create song table
CREATE TABLE song(
	Id SERIAL NOT NULL 
	,ArtistId INT 
	,Song VARCHAR(100)
	,FOREIGN KEY (ArtistId) REFERENCES artist(ID)
); 

-- Insert statments below for some sample data: 

-- insert songs 
INSERT INTO song (ArtistId ,Song )VALUES 
( 1, 'Jumping Jack flash')
,(1, 'Start Me UP')
,(2, 'In Bloom')
,(2, 'Heart Shaped Box')
,(3, 'I Will Wait'); 

-- insert data 
INSERT INTO artist VALUES 
(1 ,'Rolling Stones','Rock')
, (2, 'Nirvana','Grunge')
, (3, 'Mumford And Sons', 'Pop');

