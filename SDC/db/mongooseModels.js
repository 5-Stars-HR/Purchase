const mongoose = require('mongoose');
const mongoURI = 'mongodb://localhost:27017/checkout';



//productId should be auto incrementing
const productSchema = new mongoose.Schema({
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
  onlineAvailability: Boolean,
});

const inventorySchema = new mongoose.Schema({
  productId: Number,
  stores: Object,
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
const storeSchema = new mongoose.Schema({
  storeId: Number,
  storeName: String,
  street: String,
  city: String,
  state: String,
  zip: Number,
  productAvailability: Boolean
});

const Products = mongoose.model('Products', productSchema, 'products');
const Inventory = mongoose.model('Inventory', inventorySchema, 'inventory');
const Stores = mongoose.model('Stores', storeSchema, 'stores');

module.exports = { Products, Stores, Inventory };


// select * from inventory where product_id = 9888999 AND store_id = 1 AND store_id = 124 AND store_id = 244 AND store_id = 712 AND store_id = 453 AND store_id = 677;

// select * from inventory where product_id = 10000000 AND store_id = 712;

// select * from inventory where product_id = 9888999 AND store_id = 1 OR product_id = 9888999 AND store_id = 124 OR product_id = 9888999 AND store_id = 244 OR product_id = 9888999 AND store_id = 874 OR product_id = 9888999 AND store_id = 453 OR product_id = 9888999 AND store_id = 677;

// INSERT INTO inventory (store_id, product_id) VALUES (874, 9888999);