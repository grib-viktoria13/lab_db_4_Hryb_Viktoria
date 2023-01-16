
DELETE FROM genre;
DELETE from sell;
DELETE FROM artist;

INSERT into artist
VALUES (1,'The Beatles', 'United Kingdom', 290.4 , 1962),
	(2,'Queen', 'United Kingdom', 184, 1973),
	(3,'Madonna', 'United States', 181.7, 1983),
	(4,'Rihanna', 'Barbados', 335.3 , 2005),
	(5,'Taylor Swift', 'United States', 250.4 , 2006),
	(6,'Beyonce', 'United States', 226.5, 2002),
	(7,'Ed Sheeran', 'United Kingdom', 246.7, 2011),
	(8,'Katy Perry', 'United States', 172.9, 2008),
	(9,'Lady Gaga', 'United States', 159, 2008);


	
insert into genre
VALUES (1,1, 'rock'),
	(2,1, 'pop'),
	(3,2,'rock'),
	(4,3,'pop'),
	(5,3,'dance'),
	(6,3,'electronica'),
	(7,4,'R&B'),
	(8,4,'pop'),
	(9,4,'dance'),
	(10,4,'hip-hop'),
	(11,5,'pop'),
	(12,5,'country'),
	(13,5,'rock'),
	(14,5,'folk'),
	(15,5,'alternative'),
	(16,5,'R&B'),
	(17,6,'pop'),
	(18,7,'pop'),
	(19,7,'folk pop'),
	(20,8,'pop'),
	(21,9,'pop'),
	(22,9,'dance'),
	(23,9,'electronic');
	
insert into sell
VALUES (1, 1, 600),
	(2, 2, 300),
	(3, 3, 300),
	(4, 4, 250),
	(5, 5, 200),
	(6, 6, 200),
	(7, 7, 150),
	(8, 8, 143),
	(9, 9, 124);