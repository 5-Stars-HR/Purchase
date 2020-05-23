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


psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed1.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed2.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed3.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed4.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed5.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed6.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed7.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed8.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed9.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed10.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed11.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed12.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed13.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed14.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed15.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed16.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed17.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed18.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed19.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed20.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed21.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed22.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed23.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed24.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed25.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed26.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed27.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed28.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed29.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed30.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed31.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed32.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed33.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed34.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed35.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed36.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed37.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed38.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed39.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed40.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed41.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed42.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed43.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed44.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed45.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed46.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed47.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed48.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed49.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed50.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed51.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed52.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed53.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed54.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed55.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed56.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed57.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed58.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed59.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed60.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed61.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed62.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed63.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed64.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed65.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed66.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed67.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed68.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed69.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed70.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed71.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed72.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed73.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed74.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed75.csv' DELIMITER ',' CSV HEADER;"



psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed76.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed77.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed78.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed79.csv' DELIMITER ',' CSV HEADER;"
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventoryCsvSeed80.csv' DELIMITER ',' CSV HEADER;"