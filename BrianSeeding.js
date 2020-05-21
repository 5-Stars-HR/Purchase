const faker = require('faker');

var legoName = `${faker.commerce.productAdjective()} ${faker.commerce.color()} ${faker.commerce.productName()}`;

console.log(legoName);