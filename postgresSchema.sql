DROP DATABASE IF EXISTS checkOut;

CREATE DATABASE checkOut;

\c checkOut;

CREATE TABLE products (
  productId SERIAL PRIMARY KEY,
  productName VARCHAR(75),
  price NUMERIC (5, 2) NOT NULL,
  reviewCount SMALLINT NOT NULL,
  rating NUMERIC (1, 2) NOT NULL,
  themeName VARCHAR(25),
  themeUrl VARCHAR(100),
  featured VARCHAR(25),
  chokingHazard BOOLEAN,
  productLimit TINYINT NOT NULL,
  productUrl VARCHAR(100),
  onlineAvailability BOOLEAN,
  PRIMARY KEY(id)
)

CREATE TABLE stores (
  storeId SERIAL PRIMARY KEY,
  storeName VARCHAR(80),
  street VARCHAR(100),
  city VARCHAR(25),
  state CHAR(2),
  zip INT (5) ZEROFILL,
  PRIMARY KEY(id)
)

CREATE TABLE inventory (
  productId INT NOT NULL,
  storeId INT NOT NULL,
  amount TINYINT NOT NULL,
  FOREIGN KEY (productId) REFERENCES products(id),
  FOREIGN KEY (storeId) REFERENCES stores(id)
)