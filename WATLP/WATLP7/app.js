const mysql = require("mysql2/promise");

async function main() {
  let connection;

  try {
    // Establish an SQL connection.
    connection = await mysql.createConnection({
      host: "localhost",
      user: "vikas",
      password: "mysql password",
    })

    // Prepare the database.
    await connection.query("CREATE DATABASE IF NOT EXISTS student_db");
    await connection.query("USE student_db");

    // Prepare required tables.
    await connection.query(`
      CREATE TABLE IF NOT EXISTS students (
      roll_no INT PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
      address VARCHAR(255) NOT NULL
      )
    `);

    // Insert 10 student records.
    const students = [
      [1, "Vikas Kushwa", "Vasai"],
      [2, "Ramesh Chakravarti", "Panvel"],
      [3, "Gaurav Oza", "Virar"],
      [4, "Guddi Gupta", "Vashi"],
      [5, "Sachin Dubey", "Bhayendar"],
      [6, "Rahul Pawar", "Mira Road"],
      [7, "Vedant Gaikwad", "Parel"],
      [8, "Uday Bhosle", "Vesit"],
      [9, "Aniket Kanojiya", "Vesit"],
      [10, "Nimesh Patel", "Kandivali"],
    ]

    await connection.query(
      `INSERT IGNORE INTO students (roll_no, name, address) VALUES ?`,
      [students]
    );
    console.log("Inserted 10 student records.")
    console.log("Existing roll numbers were skipped.");

    // Update a record.
    const [updateResult] = await connection.execute(
      "UPDATE students SET address = ? WHERE address = ?",
      ["Chembur", "Vesit"]
    );
    console.log(`Updated rows: ${updateResult.affectedRows}`);

    // Delete a record.
    const [deleteResult] = await connection.execute(
      "DELETE FROM students WHERE roll_no = ?",
      [1]
    );
    console.log(`Students expelled: ${deleteResult.affectedRows}`);

    // Display the remaining records.
    const [rows] = await connection.query(
      "SELECT roll_no, name, address FROM students ORDER BY roll_no"
    );
    console.log(rows);

  } catch (error) {
    console.error("Database operation failed:", error.message)
    process.exitCode = 1;

  } finally {
    if (connection) {
      await connection.end();
    }
  }
}

main()
