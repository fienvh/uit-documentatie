---
---

# Type

One of the place types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'place': [insert link]

Object must contain:
- id
- label
- domain

**Method + URL**

```
PUT /places/{cdbid}/type
```

**Definition**

```
{
  "type": "object",
  "description": "One of the event types available at: http://taxonomy.uitdatabank.be/api/domain/eventtype/classification (contains types for both events and places)",
  "properties": {
    "id": {
      "type": "string",
      "example": "0.14.0.0.0"
    },
    "label": {
      "type": "string",
      "example": "Monument"
    },
    "domain": {
      "type": "string",
      "enum": [
        "eventtype"
      ]
    }
  }
}
```

**Example body**

```
{
"type": {
    "id": "0.14.0.0.0",
    "label": "Monument",
    "domain": "eventtype"
  }
}
```