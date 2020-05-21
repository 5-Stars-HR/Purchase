DROP DATABASE IF EXISTS checkOut;

CREATE DATABASE checkOut;

\c checkOut;

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  productName VARCHAR(75),
  price NUMERIC (5, 2) NOT NULL,
  reviewCount SMALLINT NOT NULL,
  rating NUMERIC (1, 2) NOT NULL,
  themeName VARCHAR(25),
  themeImageUrl VARCHAR(100),
  featured VARCHAR(25),
  chokingHazard BOOLEAN,
  productLimit TINYINT NOT NULL,
  productImageUrl VARCHAR(100),
  productAvailabilityOnline BOOLEAN,
  PRIMARY KEY(id)
)

CREATE TABLE stores (
  id SERIAL PRIMARY KEY,
  -- Initial schema for better fake store distances
  storeAddress VARCHAR(100)
  xCord TINYINT NOT NULL,
  yCord TINYINT NOT NULL,
  -- Ultimately what I want to do:
  -- storeName VARCHAR(80),
  -- storeSt VARCHAR(100),
  -- storeCity VARCHAR(25),
  -- storeState CHAR(2),
  -- storeZip MEDIUMINT (5) ZEROFILL,
  PRIMARY KEY(id)
)

CREATE TABLE inventory (
  productId INT NOT NULL,
  storeId INT NOT NULL,
  amount INT NOT NULL,
  FOREIGN KEY (productId) REFERENCES products(id),
  FOREIGN KEY (storeId) REFERENCES stores(id)
)