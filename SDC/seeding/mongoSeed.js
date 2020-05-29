const fs = require('fs');
const path = require('path');
const faker = require('faker');
const { Products, Stores, Inventory } = require('./MongoSchema.js');
const randStores = require('./randStores.js');
const {
  mockStores, mockThemes, mockFeatured, mockNames,
} = require('../seeder/exampleData.js');
// const mongoose = require('mongoose');
// const mongoURI = 'mongodb://localhost:27017/checkout';

const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');

// Connection URL
const url = 'mongodb://localhost:27017/checkout';

// Use connect method to connect to the Server
MongoClient.connect(url, function(err, client) {
  assert.equal(null, err);
  const db = client.db("checkout");

console.log(new Date())

const prices = [249.99, 169.99, 204.99, 34.99, 219.99, 309.99, 409.99, 39.99, 294.99, 54.99, 339.99, 379.99, 204.99, 214.99, 159.99, 54.99, 19.99, 229.99, 139.99, 494.99, 134.99, 124.99, 309.99, 374.99, 384.99, 29.99, 184.99, 264.99, 149.99, 169.99, 289.99, 174.99, 409.99, 249.99, 484.99, 479.99, 459.99, 309.99, 1134.99, 209.99, 354.99, 464.99, 184.99, 144.99, 219.99, 489.99, 224.99, 124.99, 44.99, 99.99, 179.99, 379.99, 144.99, 389.99, 84.99, 364.99, 119.99, 229.99, 74.99, 219.99, 254.99, 4.99, 74.99, 284.99, 474.99, 159.99, 414.99, 114.99, 234.99, 54.99, 374.99, 24.99, 219.99, 8.99, 374.99, 319.99, 474.99, 284.99, 469.99, 59.99, 219.99, 489.99, 309.99, 184.99, 14.99, 349.99, 439.99, 29.99, 339.99, 479.99, 424.99, 194.99, 59.99, 29.99, 474.99, 454.99, 309.99];

const ratings = [3.4, 3.5, 4.3, 0.2, 4.2, 2.3, 1.3, 4, 4.9, 2.5, 0.9, 2.5, 3.1, 4, 1.2, 3.1, 2.3, 2, 3.2, 4.4, 1.1, 3.8, 3.9, 0.4, 4.9, 3.9, 1.8, 4.1, 1, 0.9, 1.9, 1.2, 1.7, 0.5, 0.6, 0.9, 2.9, 1, 2.5, 2.4, 1.8, 0.8, 0.9, 0, 2.9, 3.1, 0.2, 3.1, 3.3, 2.5, 1, 0.7, 1, 3.5, 1.9, 4.7, 4.4, 3.4, 0.8, 2.2, 3.8, 0, 0, 2.1, 1.8, 0.2, 1.1, 3.3, 2.9, 2.4, 2.5, 1.6, 0.8, 2.2, 4.9, 3.8, 0.6, 1, 0.4, 0.9, 0.2, 1.8, 0, 3.5, 4.3, 2.2, 1.6];

const product = (productCount) => {
  const tenMILLIONproducts = () => {
    let i = 1;
    let bulkProductHolder = [];
    let looper = () => {
      let themeIdx = 0;
      let themeLength = mockThemes.length;
      let theme = mockThemes[themeIdx];
      let featuredIdx = 0;
      let featuredLength = mockFeatured.length;
      let limit = 3;
      let priceIdx = 0;
      let ratingIdx = 0;

      let ok = true;

      do {
        let percentage = i % 100;
        let productName = `${faker.commerce.productAdjective()}${percentage > 60 ? ` ${theme.name}` : ``} LEGO ${faker.commerce.product()}`;
        let price = prices[priceIdx];
        let reviewCount = i % 79;
        let rating = ratings[ratingIdx]
        let themeName = theme.name;
        let themeUrl = theme.themeURL;
        let featured = mockFeatured[featuredIdx];
        let chokingHazard = (percentage % 4 === 0);
        let productLimit = limit;
        let productUrl = theme.productURL;
        let onlineAvailability = (percentage % 3 === 0);

        let product = {
          productId: i,
          productName: productName,
          price: price,
          reviewCount: reviewCount,
          rating: rating,
          themeName: themeName,
          themeUrl: themeUrl,
          featured: featured,
          chokingHazard: chokingHazard,
          productLimit: productLimit,
          productUrl: productUrl,
          onlineAvailability: onlineAvailability
        };

        // console.log(`db.products.insertOne({productId: ${10000000 + i},productName: "${productName}",price: ${product.price},   reviewCount: ${product.reviewCount}, rating: ${product.rating}, themeName: "${product.themeName}", themeUrl: "${product.themeUrl}", featured: "${product.product}", chokingHazard: ${product.chokingHazard}, productLimit: ${product.productLimit},  productUrl: "${product.productUrl}", onlineAvailability: "${product.onlineAvailability}"}).explain("executionStats")\n\n`);


        bulkProductHolder.push(product);
        i++;

        // reseting rolling indexes
        limit === 8 ? limit = 3 : limit += 1;
        themeIdx === themeLength - 1 ? themeIdx = 0 : themeIdx += 1;
        theme = mockThemes[themeIdx];
        priceIdx === prices.length - 1 ? priceIdx = 0 : priceIdx += 1;
        ratingIdx === ratings.length - 1 ? ratingIdx = 0 : ratingIdx += 1;
        featuredIdx === featuredLength - 1 ? featuredIdx = 0 : featuredIdx += 1;

        if (i % 50000 === 0 || i === productCount) {
          // console.log(i);
          // Products.collection.insertMany(bulkProductHolder, (err) => {
          //   if (err) {
          //     console.log(err)
          //   } else {
          //     bulkProductHolder = [];
          //     console.log(`saved products - ${i}`);
          //   }
          // });
          break;
        }
      } while (i < productCount && ok);

      if (i < productCount) {
        setTimeout(looper, 1000);
      }

    }
    looper();
  }
  tenMILLIONproducts();
};

const inventory = (inventoryCount) => {
  const tenMILLIONinventories = () => {
    let i = 1;
    let bulkInventoryHolder = [];
    let inventoryLooper = () => {
      let ok = true;
      while (i < inventoryCount && ok) {
        let percentage = i % 100;
        let inventory = {
          productId: i,
          stores: randStores[percentage]
        }

        let prev = i;
        i++;
        if (prev === i) {
          console.error('i iteration error');
          break;
        }

        bulkInventoryHolder.push(inventory);

        if (i % 25000 === 0 || i === inventoryCount) {
          console.log(i);
          // Inventory.collection.insertMany(bulkInventoryHolder, (err) => {
          //   if (err) {
          //     console.log(err)
          //   } else {
          //     bulkInventoryHolder = [];
          //     console.log(`saved Inventories - ${i}`);
          //   }
          // });
          db.collection('inventory').insertMany(bulkInventoryHolder, (err) => {
            if (err) {
              console.log(err)
            } else {
              bulkInventoryHolder = [];
              console.log(`saved inventory - ${i}`);
            }
          });
          break;
        }
      };
      if (i < inventoryCount) {
        setTimeout(inventoryLooper, 1000);
      }
    }
    inventoryLooper();
  }
  tenMILLIONinventories();
};

const stores = (storeNum) => {
  let bulkHolder = [];
  for (let i = 1; i <= storeNum; i++) {
    let north = 48.7;
    let south = 24.5;
    let west = -123.3;
    let east = -70.3;

    let lat = parseFloat((Math.random() * (north - south) + south).toFixed(2));
    let long = parseFloat((Math.random() * (east - west) + west).toFixed(2));

    console.log(lat,long);


    let fakerCity = faker.address.city()
    let storeName = `LEGO STORE ${fakerCity} ${faker.address.streetSuffix()}`;
    let street = `${faker.address.streetAddress()} ${faker.address.streetName()}`
    let city = fakerCity;
    let state = faker.address.stateAbbr();
    let zip = Math.floor(Math.random() * 100000);
    let loc = {
      type: "Point",
      coordinates: [lat, long]
    }

    let store = {
      storeId: i,
      storeName: storeName,
      street: street,
      city: city,
      state: state,
      zip: zip
    };

    bulkHolder.push(store);

    if (i % 500 === 0 || i === storeNum ) {
      // Stores.bulkWrite(bulkHolder, {ordered: false});
      db.collection('stores').insertMany(bulkHolder, (err) => {
        if (err) {
          console.log(err)
        } else {
          bulkHolder = [];
          console.log(`saved stores - ${i}`);
        }
      });
      bulkHolder = [];
      console.log(i);
    }
  };
  // Stores.bulkWrite(bulkHolder, {ordered: false});
};


// stores(1000);
// product(10);

// client.close();
});