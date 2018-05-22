---
---

# Event - terms

* Must contain only 1 `id` for eventtype, can be combined with a theme id.
* Can contain `domain` and `label`, but only `id` will be validated
* See documentation for [eventTypes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_aanbod/) and [event themes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/combinatie_type_thema/) and [facilities](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/voorzieningen/)

**Example 1**

```
"terms": [
  {
    "id": "0.50.4.0.0"
  },
  {
    "id": "1.8.2.0.0"
  }
]
```

**Example 2**

```
"terms": [
  {
    "domain": "eventtype",
    "id": "0.50.4.0.0",
    "label": "Concert"
  },
  {
    "domain": "theme",
    "id": "1.8.2.0.0",
    "label": "Jazz en blues"
  }
]
```
