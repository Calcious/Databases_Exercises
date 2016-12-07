use codeup;
DROP TABLE albums;
CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) DEFAULT 'NONE',
  song_name  VARCHAR(100) NOT NULL, release_date YEAR,
  sales DECIMAL,
  genre VARCHAR(100),
  PRIMARY KEY (id)
);