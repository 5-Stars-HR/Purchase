const mongoose = require('mongoose');
mongoose.connect('mongodb://localhost/fetcher');

let db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));

//productId should be auto incrementing
const productSchema = mongoose.Schema({
  productId: Number,
  productName: String,
  price: Number,
  reviewCount: Number,
  rating: Number,
  themeName: String,
  themeUrl: String,
  featured: String,
  chokingHazard: Boolean,
  productLimit: Number,
  productUrl: String,
  productAvailability: Boolean,

});

/*
storeAvailabilty thoughts:
  - setup for the object might be {storeId: storeZip} in order to sort by distance in query and only return the 5 closest stores
  -  Fetch the Product document identified by this catalog number
  > product = db.products.findOne({catalog_number: 1234});
  // Fetch all the Parts that are linked to this Product
  > product_parts = db.parts.find({_id: { $in : product.parts } } ).toArray() ;
 */

//storeId should be auto incrementing
const storeSchema = mongoose.Schema({
  storeId: Number,
  storeName: String,
  street: String,
  city: String,
  state: String,
  zip: String,
  productAvailability: Object // an object or array with all the productIds that this store has in stock
})

//does Mongo have sets? -> if possible, move to a set with productIds: bool
//above a couple hundred queries, things can get slow