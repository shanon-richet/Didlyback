CREATE TABLE events(
  id varchar(255),
  name_event varchar(255) NOT NULL,
  description_event varchar(255) NOT NULL,
  author varchar(255) NOT NULL
);
CREATE TABLE dates(
  id varchar(255),
  date_event date NOT NULL,
  date_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
CREATE TABLE attendees(
  date_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  attendee varchar(255) NOT NULL,
  available TINYINT(1) NOT NULL
);

INSERT INTO events (id, name_event, description_event, author)
VALUES ('f5b6564b5dc4', 'My sweet 16', 'Let us all party together!', 'John Doe');

INSERT INTO dates (id, date_event)
VALUES ('f5b6564b5dc4', '2022-03-17'), ('f5b6564b5dc4', '2022-03-18'), ('f5b6564b5dc4', '2022-03-21'), ('f5b6564b5dc4', '2022-03-22');

INSERT INTO attendees (attendee, available)
VALUES ('Michou', 1), ('Jean-Daniel', 0);







