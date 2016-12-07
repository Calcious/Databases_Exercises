USE codeup;

SELECT song_name FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT *
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date WHERE release_date > 1980 = 1880;

SELECT song_name FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist WHERE artist = 'Michael Jackson' = 'Peter Jackson';



