---
---

# Event - contactPoint

Can contain the following properties:

* `phone`: can contain any string, multiple entries allowed
* `email`: must be formed valid, multiple entries allowed
* `url`: must be formed valid, multiple entries allowed

To delete one contactPoint property from an offer, remove it from the contactPoint object and update the offer.

**Example**

```
"contactPoint": {
  "email": [
    "info@test.be",
    "contact@test.be"
  ],
  "phone": [
    "002345678900",
    "003188987689"
  ],
  "url": [
    "https://www.t3.com"
  ]
}
```
