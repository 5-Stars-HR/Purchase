/* eslint-disable no-console */
const { getProductData, getStoreData, postProductData } = require('./model.js');

const getProduct = (id, callback) => {
  getProductData(id, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const getStores = (id, searchQuery, callback) => {
  getStoreData(id, searchQuery, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  });
};

const postProduct = (q, callback) => {
  postProductData(q, (err, results) => {
    if (err) {
      callback(err);
    }
    callback(null, results);
  })
}

module.exports = {
  getProduct,
  getStores,
  postProduct,
};
