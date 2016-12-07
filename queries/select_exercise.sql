USE codeup;

SELECT 'The name of all albums by Pink Floyd.';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date FROM albums WHERE song_name LIKE '%Pepper%';

SELECT 'Which albums were released in the 1990s';
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Which albums had less than 20 million certified sales';
SELECT * FROM albums WHERE sales <20;

SELECT 'All the albums in the rock genre. Is this all the rock albums in the table?';
SELECT * FROM albums WHERE genre = 'Rock';