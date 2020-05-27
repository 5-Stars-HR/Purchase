const fs = require('fs');
const path = require('path');
const faker = require('faker');
const {
  mockStores, mockThemes, mockFeatured, mockNames,
} = require('../seeder/exampleData.js');

console.log(new Date());

const prices = [249.99, 169.99, 204.99, 34.99, 219.99, 309.99, 409.99, 39.99, 294.99, 54.99, 339.99, 379.99, 204.99, 214.99, 159.99, 54.99, 19.99, 229.99, 139.99, 494.99, 134.99, 124.99, 309.99, 374.99, 384.99, 29.99, 184.99, 264.99, 149.99, 169.99, 289.99, 174.99, 409.99, 249.99, 484.99, 479.99, 459.99, 309.99, 1134.99, 209.99, 354.99, 464.99, 184.99, 144.99, 219.99, 489.99, 224.99, 124.99, 44.99, 99.99, 179.99, 379.99, 144.99, 389.99, 84.99, 364.99, 119.99, 229.99, 74.99, 219.99, 254.99, 4.99, 74.99, 284.99, 474.99, 159.99, 414.99, 114.99, 234.99, 54.99, 374.99, 24.99, 219.99, 8.99, 374.99, 319.99, 474.99, 284.99, 469.99, 59.99, 219.99, 489.99, 309.99, 184.99, 14.99, 349.99, 439.99, 29.99, 339.99, 479.99, 424.99, 194.99, 59.99, 29.99, 474.99, 454.99, 309.99];

const ratings = [3.4, 3.5, 4.3, 0.2, 4.2, 2.3, 1.3, 4, 4.9, 2.5, 0.9, 2.5, 3.1, 4, 1.2, 3.1, 2.3, 2, 3.2, 4.4, 1.1, 3.8, 3.9, 0.4, 4.9, 3.9, 1.8, 4.1, 1, 0.9, 1.9, 1.2, 1.7, 0.5, 0.6, 0.9, 2.9, 1, 2.5, 2.4, 1.8, 0.8, 0.9, 0, 2.9, 3.1, 0.2, 3.1, 3.3, 2.5, 1, 0.7, 1, 3.5, 1.9, 4.7, 4.4, 3.4, 0.8, 2.2, 3.8, 0, 0, 2.1, 1.8, 0.2, 1.1, 3.3, 2.9, 2.4, 2.5, 1.6, 0.8, 2.2, 4.9, 3.8, 0.6, 1, 0.4, 0.9, 0.2, 1.8, 0, 3.5, 4.3, 2.2, 1.6];

const drainProduct = (productCount) => {
  const tenMILLIONproducts = () => {
    let fileIdx = 1;
    let filePath = path.join(__dirname, `./csv/products${fileIdx}.csv`);
    let writer = fs.createWriteStream(filePath);

    let i = 0;

    let drainer = () => {
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

        let product = `${productName},${price},${reviewCount},${rating},${themeName},${themeUrl},${featured},${chokingHazard},${productLimit},${productUrl},${onlineAvailability}\n`;

        // reseting rolling indexes
        limit === 8 ? limit = 3 : limit += 1;
        themeIdx === themeLength - 1 ? themeIdx = 0 : themeIdx += 1;
        theme = mockThemes[themeIdx];
        priceIdx === prices.length - 1 ? priceIdx = 0 : priceIdx += 1;
        ratingIdx === ratings.length - 1 ? ratingIdx = 0 : ratingIdx += 1;
        featuredIdx === featuredLength - 1 ? featuredIdx = 0 : featuredIdx += 1;

        i++;

        if (i === productCount + 1) {
          writer.write(product, (err) => {
            if (err) {
              console.log('final write error', err);
            } else {
              console.log(`${i - 1} - prost`)
              console.log(new Date());
            }
          });
        } else {
          ok = writer.write(product);
        }
        if (i % 50000 === 0) console.log(i);
        if (i % 1000000 === 0) {
          fileIdx++;
          filePath = path.join(__dirname, `./csv/products${fileIdx}.csv`);
          writer = fs.createWriteStream(filePath);
          console.log(`${i} - prost`);
        }
      } while (i <= productCount && ok);

      if (i <= productCount) {
        writer.once('drain', drainer);
      }
    }
    drainer();
  }
  tenMILLIONproducts();
};

const stores = (num) => {
  for (let i = 0; i <= num; i++) {
    let fakerCity = faker.address.city()
    let storeName = `LEGO STORE ${fakerCity} ${faker.address.streetSuffix()}`;
    let street = `${faker.address.streetAddress()} ${faker.address.streetName()}`
    let city = fakerCity;
    let state = faker.address.stateAbbr();
    let zip = Math.floor(Math.random() * 100000);

    storeCsvSeed += `${storeName},${street},${city},${state},${zip}\n`
  };
  const filePath = path.join(__dirname, `./csv/stores.csv`)
  fs.writeFile(filePath, storeCsvSeed, (err) => {
    if (err) {
      console.log(`store seed write fail`);
    } else {
      console.log(`${num} - prost`);
      console.log(new Date());
    }
  });
};

const drainInventory = (productNum, storeNum) => {
  const tenBILLIONsnippets = () => {
    let fileIdx = 1;
    let filePath = path.join(__dirname, `./csv/inventory${fileIdx}.csv`);
    let writer = fs.createWriteStream(filePath);

    let i = 1;
    let j = 1;
    let jIdx = 0;

    let drainer = () => {
      let ok = true;

      do {
        let snippet = `${j + jIdx},${i}\n`;
        j += 12;
        if ((j + jIdx) > productNum) {
          j = 1;
          i++;
          jIdx < 11 ? jIdx++ : jIdx = 0;
        }
        if (i === storeNum + 1) {
          writer.write(snippet, (err) => {
            if (err) {
              console.log('final write stream error', err);
            } else {
              console.log(`${i - 1} - prost`)
              console.log(new Date());
            }
          });
        } else {
          ok = writer.write(snippet);
        }
        if (j === 1 && i % 2 === 0) console.log(i)
        if (j === 1 && i % 100 === 0) {
          fileIdx++;
          filePath = path.join(__dirname, `./csv/inventory${fileIdx}.csv`);
          writer = fs.createWriteStream(filePath);
          console.log(`${i} - prost`);
        }
      } while (j <= productNum && i <= storeNum && ok);

      if (i <= storeNum) {
        writer.once('drain', drainer);
      }
    }
    drainer();
  }
  tenBILLIONsnippets();
};

// drainProduct(10000000);
// stores(900);
drainInventory(10000000, 900);