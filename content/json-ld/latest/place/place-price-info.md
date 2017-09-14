---
---

# Price info

Add an array of price info objects for the offer. 
A price info object must contain the following properties:
- category
The first price info object has category 'base', all the following objects have category 'tariff'

- name
The price info object with category 'base' must get the name 'Basistarief', objects with category 'tariff' can have any name

- price
Pricevalue is a floating-point number, use 0.0 for free events

- priceCurrency
Use `EUR` for EURO notation

**Method + URL**

```
PUT /events/{cdbid}/priceInfo
```

**Definition**
```
{
  "required": [
    "category",
    "name",
    "price",
    "priceCurrency"
  ],
  "properties": {
    "category": {
      "type": "string",
      "enum": [
        "base",
        "tariff"
      ]
    },
    "name": {
      "type": "string",
      "example": "Basistarief"
    },
    "price": {
      "type": "number",
      "format": "float",
      "example": 10.0
    },
    "priceCurrency": {
      "type": "string",
      "example": "EUR"
    }
  }
}
```

**Example body**

```
[
  {
    "category": "base", 
    "name": "Basistarief", 
    "price": 10, 
    "priceCurrency": "EUR"
  }, 
  {
    "category": "tariff", 
    "name": "Tot 2 jaar", 
    "price": 0, 
    "priceCurrency": "EUR"
  }, 
  {
    "category": "tariff", 
    "name": "Van 2 tot 12", 
    "price": 6, 
    "priceCurrency": "EUR"
  }
]
```