psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed1.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed2.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed3.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed4.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed5.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed6.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed7.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed8.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed9.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed10.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed11.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed12.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed13.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed14.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed15.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed16.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed17.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed18.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed19.csv' DELIMITER ',' CSV HEADER;"

psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/productCsvSeed20.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY stores(store_name, street, city, state, zip) FROM '/Users/brian/src/5-Star/Product/SDC/csv/storeCsvSeed.csv' DELIMITER ',' CSV HEADER;"


psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory1.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory2.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory3.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory4.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory5.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory6.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory7.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory8.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory9.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory10.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory11.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory12.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory13.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory14.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory15.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory16.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory17.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory18.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory19.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory20.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory21.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory22.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory23.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory24.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory25.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory26.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory27.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory28.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory29.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory30.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory31.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory32.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory33.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory34.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory35.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory36.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory37.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory38.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory39.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory40.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory41.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory42.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory43.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory44.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory45.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory46.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory47.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory48.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory49.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory50.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory51.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory52.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory53.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory54.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory55.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory56.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory57.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory58.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory59.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory60.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory61.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory62.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory63.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory64.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory65.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory66.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory67.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory68.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory69.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory70.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory71.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory72.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory73.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory74.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory75.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory76.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory77.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory78.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory79.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory80.csv' DELIMITER ',' CSV HEADER;"