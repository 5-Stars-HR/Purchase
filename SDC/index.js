const mongodb = require("mongodb").MongoClient;
let url = "mongodb://localhost:27017/checkout";

const getProduct = (id, callback) => {
  id = parseInt(id)
  mongodb.connect(url, { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) {
      throw err;
      callback(err);
    }
    client.db("checkout").collection("products").find({ productId: id }).toArray((err, item) => {
      if (err) {
        callback(err);
      }
      callback(null, item);
      client.close();
    });
  })
};

const getNearbyStores = (id, zip, callback) => {
  id = parseInt(id);
  zip = parseInt(zip);
  mongodb.connect(url, { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) {
      throw err;
      callback(err);
    }
    client.db("checkout").collection("stores").find({ zip: { $gte: zip } }).sort({ zip: 1 }).limit(3).toArray((err, stores) => {
      if (err) {
        callback(err);
      } else {
        client.db("checkout").collection("inventory").find({ productId: id }).toArray((err, inventory) => {
          if (err) {
            callback(err)
          } else {
            stores.map(store => {
              let zipString = store.zip.toString().padStart(5, '0');
              store.address = `${store.street}, ${store.city}, ${store.state} ${zipString}`
              store.id = (store.zip - zip) / 10;
              if (inventory[0].stores[store.storeId]) {
                store.productAvailability = true;
              }
            });
            callback(null, stores)
          }
        });
      };
    });
  });
}

module.exports = { getProduct, getNearbyStores }