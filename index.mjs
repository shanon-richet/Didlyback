
import SQLite from 'sqlite-async';

async function getAllEvents() {
    const db = await SQLite.open('./db/database');

    const events = await db.all(
      'SELECT * from events;'
    );

    const del = await db.run('DELETE FROM events WHERE name_event=?', [
      "New Year"
    ]);

    console.log(events)
    db.close();
    return del;
}
getAllEvents()
