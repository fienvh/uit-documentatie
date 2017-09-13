---
---

# Contact point
Contact point can contain one or more of the following properties, each property can contain multiple entries:
- url
- email
- phone

**Method + URL**

```
PUT /places/{cdbid}/contactPoint
```

**Definition**
```
{
  "type": "object",
  "required": [
    "url",
    "email",
    "phone"
  ],
  "properties": {
    "url": {
      "type": "array",
      "items": {
        "type": "string",
        "format": "url",
        "example": "http://google.be"
      }
    },
    "email": {
      "type": "array",
      "items": {
        "type": "string",
        "format": "email",
        "example": "user@example.com"
      }
    },
    "phone": {
      "type": "array",
      "items": {
        "type": "string",
        "format": "phone",
        "example": "0123456789"
      }
    }
  }
}
```