## Server API

### Get product info
  * GET `/products/:id`

**Path Parameters:**
  * `id` products id

**Success Status Code:** `200`

**Returns:** JSON

```json
    {
      "id": 1,
      "productName": "Gorgeous Cotton Gloves",
      "price": 40.99,
      "reviewCount": 57,
      "rating": 2,
      "themeName": "LEGO Marvel",
      "themeImageUrl": "https://legofec.s3-us-west-1.amazonaws.com/themes/marvel.png",
      "featured": "Retiring soon",
      "chokingHazard": 0,
      "productLimit": 5,
      "productImageUrl": "https://legofec.s3-us-west-1.amazonaws.com/products/marvel.png",
      "productAvailabilityOnline": 1
    }
```

### Add product
  * POST `/products`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys

```json
    {
      "productName": "String",
      "price": "Number",
      "reviewCount": "Number",
      "rating": "Number",
      "themeName": "String",
      "themeImageUrl": "String",
      "featured": "String",
      "chokingHazard": "Number",
      "productLimit": "Number",
      "productImageUrl": "String",
      "productAvailabilityOnline": "Number"
    }
```


### Update product info
  * PATCH `/products/:id`

**Path Parameters:**
  * `id` product id

**Success Status Code:** `204`

**Request Body**: Expects JSON with any of the following keys (include only keys to be updated)

```json
    {
      "productName": "String",
      "price": "Number",
      "reviewCount": "Number",
      "rating": "Number",
      "themeName": "String",
      "themeImageUrl": "String",
      "featured": "String",
      "chokingHazard": "Number",
      "productLimit": "Number",
      "productImageUrl": "String",
      "productAvailabilityOnline": "Number"
    }
```

### Delete product
  * DELETE `/products/:id`

**Path Parameters:**
  * `id` product id

**Success Status Code:** `204`



### API calls duplicated for "stores"
  * GET `/products/:id/stores/:zip`

**Path Parameters:**

  * `zip` stores zipcode

**Success Status Code:** `200`

**Returns:** JSON

```json
    {
      "relatedStores": [
        {
          "storeId": "Number",
          "storeName": "String",
          "storeSt": "String",
          "storeCity": "String",
          "storeState": "String",
          "storeZip": "Number"
        },
        {
          "storeId": "Number",
          "storeName": "String",
          "storeSt": "String",
          "storeCity": "String",
          "storeState": "String",
          "storeZip": "Number"
        },
        // etc...
      ]
    }
```

### Add product
  * POST `/stores`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys

```json
    {
      "storeId": "Number",
      "storeName": "String",
      "storeSt": "String",
      "storeCity": "String",
      "storeState": "String",
      "storeZip": "Number"
    }
```

### Update product info
  * PATCH `/stores/:id`

**Path Parameters:**
  * `id` product id

**Success Status Code:** `204`

**Request Body**: Expects JSON with any of the following keys (include only keys to be updated)

```json
    {
      "storeId": "Number",
      "storeName": "String",
      "storeSt": "String",
      "storeCity": "String",
      "storeState": "String",
      "storeZip": "Number"
    }
```

### Delete product
  * DELETE `/stores/:id`

**Path Parameters:**
  * `id` store id

**Success Status Code:** `204`