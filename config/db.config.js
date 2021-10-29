const mysql = require("mysql");

const dbconn = mysql.createConnection({
  host: "10.0.1.71",
  user: "root",
  password: "ze3r@l6darr0w",
  database: "timesheetdb",
});

dbconn.connect(function (error) {
  if (error) throw error;
  console.log("Database Connected!");
});

module.exports = dbconn;
