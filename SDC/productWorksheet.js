const fs = require('fs');
const path = require('path');
const faker = require('faker');
const {
  mockStores, mockThemes, mockFeatured, mockNames,
} = require('../seeder/exampleData.js');

let productCsvSeed = ``;

const drainProduct = (limit) => {
  const tenMILLIONproducts = () => {
    let fileIdx = 1;
    let filePath = path.join(__dirname, `./csv/products${fileIdx}.csv`);
    let writer = fs.createWriteStream(filePath);

    let themeIdx = 0;
    let themeLength = mockThemes.length;
    let theme = mockThemes[themeIdx];
    let featuredIdx = 0;
    let featuredLength = mockFeatured.length;
    let limit = 3;
    let priceIdx = 0;
    let ratingIdx = 0;

    let i = 0;

    let drainer = () => {
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

        i++;
      } while (i <= limit && ok);

      if (i <= limit) {
        writer.once('drain', drainer);
      }




      for (let i = 0; i <= limit + 1; i++) {
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

        productCsvSeed += `${productName},${price},${reviewCount},${rating},${themeName},${themeUrl},${featured},${chokingHazard},${productLimit},${productUrl},${onlineAvailability}\n`;

        // reseting rolling indexes
        limit === 8 ? limit = 3 : limit += 1;
        themeIdx === themeLength - 1 ? themeIdx = 0 : themeIdx += 1;
        priceIdx === prices.length - 1 ? priceIdx = 0 : priceIdx += 1;
        ratingIdx === ratings.length - 1 ? ratingIdx = 0 : ratingIdx += 1;
        featuredIdx === featuredLength - 1 ? featuredIdx = 0 : featuredIdx += 1;

        if (i % (limit / 10) === 0) console.log(i + (x * limit))

        if (i === limit / 2 || i === limit) {
          // const filePath = path.join(__dirname, `./csv/productCsvSeed${(i / (limit / 2)) + (x * 2)}.csv`)
          // fs.writeFile(filePath, productCsvSeed, (err) => {
          //   if (err) {
          //     console.log(`product seed write fail`);
          //   } else {
          //     console.log(`${i + (x * (limit / 10))} - prost`);
          //   }
          // });
          // productCsvSeed = ``;
        }
      };
    }
  }
  tenMILLIONproducts();
};