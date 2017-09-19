---
---

# Name

An object containing the name in the given language. UiTdatabanks default language is nl

**Method + URL**

```
PUT /events/{cdbid}/name/{lang}
```

**Definition**

```
{
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "example": "Name example"
        }
    }
}
```

**Example body**

```
{
"name": "Name example"
}
```