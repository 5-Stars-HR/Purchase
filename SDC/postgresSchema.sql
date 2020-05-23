DROP DATABASE IF EXISTS checkout;

CREATE DATABASE checkout;

\c checkout;

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(75),
  price NUMERIC (6, 2) NOT NULL,
  review_count SMALLINT NOT NULL,
  rating NUMERIC (3, 2) NOT NULL,
  theme_name VARCHAR(25),
  theme_url VARCHAR(300),
  featured VARCHAR(25),
  choking_hazard BOOLEAN,
  product_limit SMALLINT NOT NULL,
  product_url VARCHAR(300),
  online_availability BOOLEAN
);

-- rating is denormalized ^
-- urls go up to ~288 (check)

CREATE TABLE stores (
  store_id SERIAL PRIMARY KEY,
  store_name VARCHAR(80),
  street VARCHAR(100),
  city VARCHAR(25),
  state CHAR(2),
  zip INT
);
-- technically would want to be testing to make sure location is valid


CREATE TABLE inventory (
  product_id INT NOT NULL,
  store_id INT NOT NULL,
  -- amount TINYINT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

ALTER TABLE inventory DISABLE TRIGGER ALL;