SHOW DATABASES;
use codeup;
CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) DEFAULT 'NONE',
  song_name  VARCHAR(100) NOT NULL, release_date YEAR,
  sales FLOAT,
  genre VARCHAR(100),
  content TEXT NOT NULL,
  PRIMARY KEY (id)
);
show tables;
DESCRIBE albums;
