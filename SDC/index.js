const mongodb = require("mongodb").MongoClient;
let url = "mongodb://localhost:27017/checkout";

const getProduct = (id, callback) => {
  id = parseInt(id)
  mongodb.connect(url, { useNewUrlParser: true, useUnifiedTopology: true }, (err, client) => {
    if (err) {
      throw err;
      callback(err);
    }
    client.db("checkout").collection("products").find({ productId: id }).forEach((item) => {
      callback(null, item);
      console.log(item)
      client.close();
    });
  })
};

const getNearbyStores = (id, zip, callback) => {
  let q = Stores.find({zip: {$gte: zip}}).sort({zip: 1}).limit(3).lean() //poor man's location approximation, certainly an area to improve
  q.exec((err, stores) => {
    if (err) {
      callback(err);
    } else {
      Inventory.find({productId: id}).exec((err, inv) => {
        if (err) {
          callback(err)
        } else {
          stores.map(store => {
            let zipString = store.zip.toString().padStart(5, '0');
            store.address = `${store.street}, ${store.city}, ${store.state} ${zipString}`
            store.id = (store.zip - zip) / 10;
            if (inv[0].stores[store.storeId]) {
              store.productAvailability = true;
            }
          });
          callback(null, stores)
        }
      })
    }
  })
}

module.exports = { getProduct, getNearbyStores }