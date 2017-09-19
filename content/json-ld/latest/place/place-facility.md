---
---

# Facilities

One or more of the facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id


**Method + URL**

```
PUT /places/{cdbid}/facilities
```

**Example body**

```
{
"facilities": {
    "id": "3.23.1.0.0"
  }
}
```

**Definition**

```
"facilities": {
        "type": "array",
        "items": {
         "type": "string",
         "example": "3.23.1.0.0"
        }
      }
    }
```

