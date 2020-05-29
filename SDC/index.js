const { Products, Stores, Inventory } = require('./db/mongooseModels.js');
const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost:27017/checkout');

let db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));

const getProduct = (id, callback) => {
  Products.find({productId: id}).exec((err, product) => {
    if (err) {
      callback(err);
    } else {
      callback(null, product);
    }
  })
}

const getNearbyStores = (id, zip, callback) => {
  let q = Stores.find({zip: {$gte: zip}}).sort({zip: 1}).limit(5) //poor man's location approximation, certainly an area to improve
  q.exec((err, stores) => {
    if (err) {
      callback(err);
    } else {
      Inventory.find({productId: id}).exec((err, inv) => {
        if (err) {
          callback(err)
        } else {
          stores.map(store => {
            store = store._doc;
            let zipString = store.zip.toString().padStart(5, '0');
            store.address = `${store.street}, ${store.city}, ${store.state} ${zipString}`
            store.id = (store.zip - zip) / 10;
            if (inv[0].stores[store.storeId]) {
              store.productAvailability = true;
            } else {
              store.productAvailability = false;
            }
          });
          callback(null, stores)
        }
      })
    }
  })
}

module.exports = { getProduct, getNearbyStores }