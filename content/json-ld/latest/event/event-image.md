---
---

# Images

## Add image
Add or remove an existing image on a existing offer

**Method + URL**

```
PUT /events/{cdbid}/images/{mediaObjectId}
DELETE /events/{cdbid}/images/{mediaObjectId}
```

Insert universally unique identifier of a mediaObject

**Definition**
```
{
  "properties": {
    "mediaObjectId": {
      "type": "string",
      "example": "73695986-e4cf-4b29-8699-13d7cd77af8c"
    }
  },
  "required": [
    "mediaObjectId"
  ]
}
```

## Update image info

Change the description and or copyright information for a specific image on a specific offer

**Method + URL**

```
PUT /events/{cdbid}/images/{mediaObjectId}
```

**Definition**
```
{
  "properties": {
    "description": {
      "type": "string",
      "description": "A description of the image."
    },
    "copyrightHolder": {
      "type": "string",
      "example": "Dirk Dirkington",
      "description": "The name of the copyright holder."
    }
  },
  "required": [
    "description",
    "copyrightHolder"
  ]
}
```


## Set main image
The main image is the only image shown in search-result listviews and the image more prominently displayed on offer-details

**Method + URL**

```
PUT /events/{cdbid}/images/main
```

**Definition**
```
{
  "properties": {
    "mediaObjectId": {
      "type": "string",
      "example": "73695986-e4cf-4b29-8699-13d7cd77af8c"
    }
  },
  "required": [
    "mediaObjectId"
  ]
}
```