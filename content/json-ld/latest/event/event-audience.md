---
---

# Target audience

An object containing the audience information to set for the event. 
By default every event has audienceType 'everyone'
Events with audienceType 'members' and 'education' are excluded from search results by default filters.

**Method + URL**

```
PUT /events/{cdbid}/audience
```

**Definition**
```
{
  "properties": {
    "audienceType": {
      "type": "string",
      "enum": [
        "everyone",
        "members",
        "education"
      ],
      "example": "everyone"
    }
  }
}
```