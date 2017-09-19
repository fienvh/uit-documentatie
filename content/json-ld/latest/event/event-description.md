---
---

# Description

Add a description in the given language for an offer. 
Description is not limited in size, but it is recommended to use the first 200 characters of the description for promotional copy as these characters are visible in list-view of results
Description should be UTF-8 encoded
Linebreaks are encoded as `\n`


**Method + URL**

```
PUT /events/{cdbid}/description/{lang}
```

**Definition**
```
{
  "properties": {
    "description": {
      "type": "string",
      "example": "This is a description."
    }
  },
  "required": [
    "description"
  ]
}
```

**Example body**

```
{
  "description": "This is a description.\n This is a new line."
}
```