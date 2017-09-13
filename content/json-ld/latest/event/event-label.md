---
---

# Labels 

Add or remove a specific label from an offer

**Method + URL**

```
PUT /events/{cdbid}/labels/{label}
DELETE /events/{cdbid}/labels/{label}
```

**Definition**
```
{
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "example": "Mijn label"
        }
    }
}
```