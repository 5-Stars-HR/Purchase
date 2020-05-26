for (let i = 1; i < 22; i++) {
  console.log(`echo PRODUCTS ${i}`);
  console.log(`psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products${i}.csv' DELIMITER ',' CSV HEADER;"`);
};

console.log('');
console.log(`echo STORES`);
console.log(`psql -d checkout --user=postgres -c "COPY stores(store_name, street, city, state, zip) FROM '/Users/brian/src/5-Star/Product/SDC/csv/stores.csv' DELIMITER ',' CSV HEADER;";`)
console.log('');

for (let i = 1; i < 42; i++) {
  console.log(`echo INVENTORY ${i}`);
  console.log(`psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory${i}.csv' DELIMITER ',' CSV HEADER;"`);
};