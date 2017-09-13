---
---

# Theme

One of the available themes at http://taxonomy.uitdatabank.be/api/domain/theme/classification. Pick a theme that fits the chosen eventtype. For an overview of all eventtypes with appropriate themes: [insert link]

Object must contain these properties:
- id
- label
- domain

**Method + URL**

```
PUT /events/{cdbid}/theme
```

**Definition**

```
{
  "type": "object",
  "description": "One of the available themes from http://taxonomy.uitdatabank.be/api/domain/theme/classification",
  "properties": {
    "id": {
      "type": "string",
      "example": "1.8.2.0.0"
    },
    "label": {
      "type": "string",
      "example": "Jazz en blues"
    },
    "domain": {
      "type": "string",
      "enum": [
        "theme"
      ],
      "description": "This is hardcoded to 'thema' in the current application. It is passed to the API and then overwritten."
    }
  }
}
```
