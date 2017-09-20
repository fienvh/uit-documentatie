---
---

# Price info

Add an array of price info objects for the offer. 

Price is not required, although once added it can not be removed from an offer.

## Resource URI

```
/places/{placeId}/priceInfo
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |


## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| category | string | The first price info object has category 'base', all the following objects have category 'tariff' (differentiated price for specific segments) | base |
| name | string | category 'base' should always have 'Basistarief' for name, discounts for specific segments can be named with category 'tariff' | Senioren |
| price | number | Pricevalue is a floating-point number, use 0.0 for free events | 10.0 |
| priceCurrency | string | 3-characters currency indicator | EUR |


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

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported
