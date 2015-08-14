INSERT INTO series (title, author_id, subgenre_id)
VALUES
("comedy", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from subgenres where name = "funny stuff")),
("comedy", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from subgenres where name = "funny stuff"));

INSERT INTO books (title, year, series_id)
VALUES
("You Blew It", 2015, (SELECT id from series where title = "comedy")),
("You Blew It", 2015, (SELECT id from series where title = "comedy")),
("You Blew It", 2015, (SELECT id from series where title = "comedy")),
("You Blew It", 2015, (SELECT id from series where title = "comedy")),
("You Blew It", 2015, (SELECT id from series where title = "comedy")),
("You Blew It", 2015, (SELECT id from series where title = "comedy"));

INSERT INTO characters (name, species, motto, author_id, series_id)
VALUES
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy")),
("Joe", "human", "you blew it", (SELECT id from authors where name = "Joe Berkowitz"), (SELECT id from series where title = "comedy"));

INSERT INTO subgenres (name)
VALUES
("funny stuff"),
("funny stuff");

INSERT INTO authors (name)
VALUES
("Joe Berkowitz"),
("Josh Gondelman");

INSERT INTO character_books (character_id, book_id)
VALUES
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It")),
((SELECT id from characters where name = "Joe"), (SELECT id from books where title = "You Blew It"));
