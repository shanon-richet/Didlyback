
import SQLite from 'sqlite-async';

async function getAllEvents() {
    const db = await SQLite.open('./db/database');
    const allEvents = await db.all(
      'SELECT * from dates;'
    );
    console.log(allEvents);
    const attendees = await db.all(
      'SELECT * from attendees;'
    );
    const events = await db.all(
      'SELECT * from events;'
    );
    console.log(events)
    console.log(allEvents);
    console.log(attendees)
  

    db.close();

    return allEvents;
}
getAllEvents()
