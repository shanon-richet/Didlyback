CREATE TABLE events(
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  name_event varchar(255) NOT NULL,
  description_event varchar(255) NOT NULL,
  author varchar(255) NOT NULL,
  FOREIGN KEY (id) REFERENCES dates(id),
  FOREIGN KEY (id) REFERENCES attendees(id)
);
CREATE TABLE dates(
  id INT NOT NULL,
  dates_id INT (5),
  date_event date NOT NULL,
  FOREIGN KEY (dates_id) REFERENCES attendees(dates_id)
);
CREATE TABLE attendees (
  id INT NOT NULL,
  dates_id INT (5),
  attendee varchar(255) NOT NULL,
  available TINYINT(1)
);

INSERT INTO events (name_event, description_event, author)
VALUES 
    ('My sweet 16', 'Let us all party together!', 'John Doe'),
    ('The big sale @ The Mall', 'I want to buy stuff at the mall, who is up?', 'Jean Deau'),
    ('New Year', 'Hit fireworks for the new Year', 'Shanon')
;
INSERT INTO dates (id, dates_id, date_event)
VALUES 
    ('1', '1', '2022-03-17'), ('1', '2', '2022-03-18'), ('1', '3', '2022-03-21'), ('1', '4', '2022-03-22'),
    ('2', '1', '2022-01-10'), ('2', '2', '2022-02-10'), ('2', '3', '2022-03-10'), ('2', '4', '2022-03-11'), ('2', '5', '2022-03-12'),
    ('3', '1', '2022-12-31'), ('3', '2', '2022-12-30')
;
INSERT INTO attendees (id, dates_id, attendee, available)
VALUES ('1', '1', 'Michou', 1), ('1', '1', 'Jean-Daniel', 0),
       ('1', '2', 'Michou', 0), ('1', '2', 'Jean-Daniel', -1),
       ('1', '3', 'Michou', 1), ('1', '3', 'Jean-Daniel', 1),  
       ('1', '4', 'Michou', -1), ('1', '4', 'Jean-Daniel', -1),
       ('2', '1', 'Michou', 1), ('2', '1', 'Jane Doe', 1), 
       ('2', '2', 'Michou', -1), ('2', '2', 'Jane Doe', 1),
       ('2', '3', 'Michou', -1), ('2', '3', 'Jane Doe', 1),
       ('2', '4', 'Michou', -1), ('2', '4', 'Jane Doe', 0),
       ('2', '5', 'Michou', -1), ('2', '5', 'Jane Doe', 0),
       ('3', '1', 'Shanon', 1), ('3', '1', 'Hanna', 1),
       ('3', '2', 'Shanon', 1), ('3', '2', 'Hanna', -1)
;



