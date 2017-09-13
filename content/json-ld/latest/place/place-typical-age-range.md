---
---

# typicalAgeRange

Add or remove the age range appropriate for the offer. 
Don't use decimals

Events with upper boundary smaller or equal to 12 are enriched with the 'Vlieg'-icon and published on https://www.uitmetvlieg.be

**Method + URL**

```
PUT /places/{cdbid}/typicalAgeRange
DELETE /places/{cdbid}/typicalAgeRange
```


**Definition**
```
{
  "properties": {
    "typicalAgeRange": {
      "type": "string",
      "example": "1-12"
    }
  },
  "required": [
    "typicalAgeRange"
  ]
}
```
