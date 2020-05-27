# start_time=`date +%s`
# node SDC/timeStamp.js


echo PRODUCTS 1
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products1.csv' DELIMITER ',';"

echo PRODUCTS 2
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products2.csv' DELIMITER ',';"

echo PRODUCTS 3
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products3.csv' DELIMITER ',';"

echo PRODUCTS 4
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products4.csv' DELIMITER ',';"

echo PRODUCTS 5
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products5.csv' DELIMITER ',';"

echo PRODUCTS 6
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products6.csv' DELIMITER ',';"

echo PRODUCTS 7
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products7.csv' DELIMITER ',';"

echo PRODUCTS 8
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products8.csv' DELIMITER ',';"

echo PRODUCTS 9
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products9.csv' DELIMITER ',';"

echo PRODUCTS 10
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products10.csv' DELIMITER ',';"

echo PRODUCTS 11
psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products11.csv' DELIMITER ',';"

# echo PRODUCTS 12
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products12.csv' DELIMITER ',';"

# echo PRODUCTS 13
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products13.csv' DELIMITER ',';"

# echo PRODUCTS 14
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products14.csv' DELIMITER ',';"

# echo PRODUCTS 15
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products15.csv' DELIMITER ',';"

# echo PRODUCTS 16
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products16.csv' DELIMITER ',';"

# echo PRODUCTS 17
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products17.csv' DELIMITER ',';"

# echo PRODUCTS 18
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products18.csv' DELIMITER ',';"

# echo PRODUCTS 19
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products19.csv' DELIMITER ',';"

# echo PRODUCTS 20
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products20.csv' DELIMITER ',';"

# echo PRODUCTS 21
# psql -d checkout --user=postgres -c "COPY products(product_name, price, review_count, rating, theme_name, theme_url, featured, choking_hazard, product_limit, product_url, online_availability) FROM '/Users/brian/src/5-Star/Product/SDC/csv/products21.csv' DELIMITER ',';"


echo STORES
psql -d checkout --user=postgres -c "COPY stores(store_name, street, city, state, zip) FROM '/Users/brian/src/5-Star/Product/SDC/csv/stores.csv' DELIMITER ',';"

echo INVENTORY 1
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory1.csv' DELIMITER ',';"

echo INVENTORY 2
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory2.csv' DELIMITER ',';"

echo INVENTORY 3
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory3.csv' DELIMITER ',';"

echo INVENTORY 4
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory4.csv' DELIMITER ',';"

echo INVENTORY 5
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory5.csv' DELIMITER ',';"

echo INVENTORY 6
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory6.csv' DELIMITER ',';"

echo INVENTORY 7
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory7.csv' DELIMITER ',';"

echo INVENTORY 8
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory8.csv' DELIMITER ',';"

echo INVENTORY 9
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory9.csv' DELIMITER ',';"

echo INVENTORY 10
psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory10.csv' DELIMITER ',';"

# echo INVENTORY 11
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory11.csv' DELIMITER ',';"

# echo INVENTORY 12
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory12.csv' DELIMITER ',';"

# echo INVENTORY 13
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory13.csv' DELIMITER ',';"

# echo INVENTORY 14
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory14.csv' DELIMITER ',';"

# echo INVENTORY 15
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory15.csv' DELIMITER ',';"

# echo INVENTORY 16
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory16.csv' DELIMITER ',';"

# echo INVENTORY 17
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory17.csv' DELIMITER ',';"

# echo INVENTORY 18
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory18.csv' DELIMITER ',';"

# echo INVENTORY 19
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory19.csv' DELIMITER ',';"

# echo INVENTORY 20
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory20.csv' DELIMITER ',';"

# echo INVENTORY 21
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory21.csv' DELIMITER ',';"

# echo INVENTORY 22
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory22.csv' DELIMITER ',';"

# echo INVENTORY 23
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory23.csv' DELIMITER ',';"

# echo INVENTORY 24
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory24.csv' DELIMITER ',';"

# echo INVENTORY 25
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory25.csv' DELIMITER ',';"

# echo INVENTORY 26
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory26.csv' DELIMITER ',';"

# echo INVENTORY 27
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory27.csv' DELIMITER ',';"

# echo INVENTORY 28
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory28.csv' DELIMITER ',';"

# echo INVENTORY 29
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory29.csv' DELIMITER ',';"

# echo INVENTORY 30
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory30.csv' DELIMITER ',';"

# echo INVENTORY 31
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory31.csv' DELIMITER ',';"

# echo INVENTORY 32
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory32.csv' DELIMITER ',';"

# echo INVENTORY 33
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory33.csv' DELIMITER ',';"

# echo INVENTORY 34
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory34.csv' DELIMITER ',';"

# echo INVENTORY 35
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory35.csv' DELIMITER ',';"

# echo INVENTORY 36
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory36.csv' DELIMITER ',';"

# echo INVENTORY 37
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory37.csv' DELIMITER ',';"

# echo INVENTORY 38
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory38.csv' DELIMITER ',';"

# echo INVENTORY 39
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory39.csv' DELIMITER ',';"

# echo INVENTORY 40
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory40.csv' DELIMITER ',';"

# echo INVENTORY 41
# psql -d checkout --user=postgres -c "COPY inventory(product_id, store_id) FROM '/Users/brian/src/5-Star/Product/SDC/csv/inventory41.csv' DELIMITER ',';"


# node SDC/timeStamp.js;

# echo run time is $(expr `date +%s` - $start_time) s
