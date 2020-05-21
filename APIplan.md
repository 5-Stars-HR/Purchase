## Server API

### Get product info
  * GET `/product/:id`

**Path Parameters:**
  * `id` restaurant id

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
  * POST `/product`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys (include only keys to be updated)

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
  * PUT `/product/:id`

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
  * DELETE `/product/:id`

**Path Parameters:**
  * `id` product id

**Success Status Code:** `204`



### API calls duplicated for "stores"
  * GET `/product/:id/store/:zip`

**Path Parameters:**

  * `zip` store zipcode

**Success Status Code:** `200`

**Returns:** JSON

```json
    {
      "relatedStores": [
        {
          "storeName": "String",
          "storeSt": "String",
          "storeCity": "String",
          "storeState": "String",
          "storeZip": "Number"
        },
        {
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
  * POST `/addStore`

**Success Status Code:** `201`

**Request Body**: Expects JSON with the following keys

```json
    {
      "storeName": "String",
      "storeSt": "String",
      "storeCity": "String",
      "storeState": "String",
      "storeZip": "Number"
    }
```

### Update product info
  * PUT `/store/:id`

**Path Parameters:**
  * `id` product id

**Success Status Code:** `204`

**Request Body**: Expects JSON with any of the following keys (include only keys to be updated)

```json
    {
      "storeName": "String",
      "storeSt": "String",
      "storeCity": "String",
      "storeState": "String",
      "storeZip": "Number"
    }
```

### Delete product
  * DELETE `/store/:id`

**Path Parameters:**
  * `id` store id

**Success Status Code:** `204`