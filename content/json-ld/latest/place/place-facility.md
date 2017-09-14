---
---

# Facilities

One of the facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id
- label
- domain

**Method + URL**

```
PUT /places/{cdbid}/facilities
```

**Definition**

```
{
  "type": "object",
  "description": "One of the facility types available at: http://taxonomy.uitdatabank.be/api/domain/facility/classification",
  "properties": {
    "id": {
      "type": "string",
      "example": "3.23.1.0.0"
    },
    "label": {
      "type": "string",
      "example": "Voorzieningen voor rolstoelgebruikers"
    }
  }
}
```

**Example body**

```
{
  "id": "3.23.1.0.0",
  "label": "Voorzieningen voor rolstoelgebruikers"
}
```