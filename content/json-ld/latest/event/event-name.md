---
---

# Name

An object containing the name in the given language. UiTdatabanks default language is nl

**Method + URL**

```
PUT /events/{cdbid}/{lang}/name
```

**Definition**

```
{
    "type": "object",
    "properties": {
        "nl": {
            "type": "string",
            "example": "Name example"
        }
    }
}
```