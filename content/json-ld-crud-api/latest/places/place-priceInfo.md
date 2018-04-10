---
---

# priceInfo

* Must contain category `base`
* can contain multiple additional `tariff`s
* `name` must contain at least the mainLanguage translation

**Example**

```
"priceInfo": [
  {
  "category": "base",
    "name": {
      "nl": "Basistarief"
    },
    "price": 11,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": {
      "nl": "Senioren"
    },
    "price": 6,
    "priceCurrency": "EUR"
  }
]
```
