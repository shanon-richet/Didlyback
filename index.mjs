// Import the SQLite module
import SQLite from 'sqlite-async'

async function getEmployeeByName(name) {
    const db = await SQLite.open("./db/database");
    const employee = await db.get("SELECT * FROM employees WHERE first_name=?", [
      name,
    ]);
    console.log(employee);
  
    db.close();
    return employee;
  }

  getEmployeeByName()