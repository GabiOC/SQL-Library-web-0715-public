CREATE TABLE series
(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id REFERENCES authors(id),
  subgenre_id REFERENCES subgenres(id)
);

CREATE TABLE subgenres
(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE authors
(
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE books
(
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id REFERENCES series(id)
);

CREATE TABLE characters
(
  id INTEGER PRIMARY KEY,
  name TEXT,
  species TEXT,
  motto TEXT,
  author_id REFERENCES authors(id),
  series_id REFERENCES series(id)
);

CREATE TABLE character_books
(
  id INTEGER PRIMARY KEY,
  character_id REFERENCES characters(id),
  book_id REFERENCES books(id)
);
