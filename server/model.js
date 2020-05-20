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
  let product = stringQ(q);
  const query = `INSERT INTO products (productName, price, reviewCount, rating, themeName, themeImageUrl, featured, chokingHazard, productLimit, productImageUrl, productAvailabilityOnline) VALUES (${product})`;
  connection.query(query, (err, results) => {
    if (err) {
      callback(err)
    }
    callback(null, results);
  })
}

const putProductData = (q, id, callback) => {
  let product = stringQ(q);
  const query = `REPLACE INTO products VALUES (${id}, ${product})`;

  connection.query(query, (err, results) => {
    if (err) {
      callback(err)
    }
    callback(null, results);
  })
}

const deleteProductData = (id, callback) => {
  console.log('delete')
}

const stringQ = (q) => {
  let str = '';
  for (let key in q) {
    str += `"${q[key]}", `;
  }
  return str.substring(0, str.length - 2);
}

module.exports = {
  getProductData,
  getStoreData,
  postProductData,
  putProductData,
  deleteProductData
};
