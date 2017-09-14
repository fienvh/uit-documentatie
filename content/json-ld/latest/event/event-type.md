---
---

# Type

One of the event types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'event': [insert link]

Object must contain:
- id
- label
- domain

**Method + URL**

```
PUT /events/{cdbid}/type
```

**Definition**

```
{
  "type": "object",
  "description": "One of the event types available at: http://taxonomy.uitdatabank.be/api/domain/eventtype/classification (contains types for both events and places)",
  "properties": {
    "id": {
      "type": "string",
      "example": "0.50.4.0.0"
    },
    "label": {
      "type": "string",
      "example": "Concert"
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
    "id": "0.50.4.0.0",
    "label": "Concert",
    "domain": "eventtype"
  }
}
```