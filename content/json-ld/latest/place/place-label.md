---
---

# Labels 

Add or remove a specific label from an offer

**Method + URL**

```
PUT /places/{cdbid}/labels/{label}
DELETE /places/{cdbid}/labels/{label}
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