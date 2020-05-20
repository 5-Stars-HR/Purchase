const { connection } = require('../db/index.js');

const getProductData = (id, callback) => {
  const query = `SELECT * FROM products WHERE id=${id}`;

  connection.query(query, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const getStoreData = (id, searchQuery, callback) => {
  const query = `SELECT * FROM stores WHERE (productId=${id} AND storeAddress LIKE '%${searchQuery}%')`;

  connection.query(query, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const postProductData = (q, callback) => {
  let arr = JSON.parse(q);
  let product = '';
  arr.forEach((i, idx) => {
    if (typeof i === 'string') i = `"${i}"`
    product += i;
    if (idx !== arr.length - 1) product += ', '
  })

  const query = `INSERT INTO products (productName, price, reviewCount, rating, themeName, themeImageUrl, featured, chokingHazard, productLimit, productImageUrl, productAvailabilityOnline) VALUES (${product})`;

  connection.query(query, (err, results) => {
    if (err) {
      callback(err)
    }
    callback(null, results);
  })
}

const putProductData = (id, q, cb) => {

}

module.exports = {
  getProductData,
  getStoreData,
  postProductData,
};
