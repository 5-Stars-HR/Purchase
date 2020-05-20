const mysql = require('mysql');

// const connection = mysql.createConnection({
//   host: process.env.HOST,
//   user: process.env.USER,
//   password: process.env.PASSWORD,
//   database: 'product_component',
// });

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'student',
  password: 'student',
  database: 'product_component',
});

connection.connect();
module.exports.connection = connection;
