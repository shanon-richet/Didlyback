CREATE TABLE events(
  id INT NOT NULL,
  name_event varchar(255) NOT NULL,
  description_event varchar(255) NOT NULL,
  author varchar(255) NOT NULL
);
CREATE TABLE dates(
  id INT NOT NULL,
  date_event date NOT NULL
);
CREATE TABLE attendees(
  date_event date NOT NULL,
  attendee varchar(255) NOT NULL,
  available TINYINT(1)
);

INSERT INTO events (id, name_event, description_event, author)
VALUES 
    ('f5b6564b5dc4', 'My sweet 16', 'Let us all party together!', 'John Doe'),
    ('38b643aeb883', 'The big sale @ The Mall', 'I want to buy stuff at the mall, who is up?', 'Jean Deau');

INSERT INTO dates (id, date_event)
VALUES 
    ('f5b6564b5dc4', '2022-03-17'), ('f5b6564b5dc4', '2022-03-18'), ('f5b6564b5dc4', '2022-03-21'), ('f5b6564b5dc4', '2022-03-22'),
    ('38b643aeb883', '2022-01-10'), ('38b643aeb883', '2022-02-10'), ('38b643aeb883', '2022-03-10'), ('38b643aeb883', '2022-03-11'), ('38b643aeb883', '2022-03-12');

INSERT INTO attendees (date_event, attendee, available)
VALUES ('2022-03-17', 'Michou', 1), ('2022-03-17', 'Jean-Daniel', 0),
       ('2022-03-18', 'Michou', 1), ('2022-03-18', 'Jean-Daniel', 0),
       ('2022-03-21', 'Michou', 1), ('2022-03-21', 'Jean-Daniel', 1),  
       ('2022-03-22', 'Michou', -1), ('2022-03-22', 'Jean-Daniel', -1),
       ('2022-02-10', 'Michou', -1), ('2022-02-10', 'Jane Doe', 1), 
       ('2022-03-10', 'Michou', -1), ('2022-03-10', 'Jane Doe', 1),
       ('2022-03-11', 'Michou', -1), ('2022-03-11', 'Jane Doe', 1),
       ('2022-03-12', 'Michou', -1), ('2022-03-12', 'Jane Doe', 0)








