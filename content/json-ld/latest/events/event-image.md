---
---

# Images

## Manage image
Add or remove an existing image on a existing offer

### Resource URI

```
/events/{eventId}/images/{mediaObjectId}
```

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| mediaObjectId	| uuid | unique identifier of a mediaObject | d595414a-13e0-4dd2-b4bd-706599427351 |

### HTTP PUT

Add an image to an offer
Update description and/or copyright information for a specifi image linked to a specific offer

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your image |
| copyrightholder | string | The copyrightholder for the used image |

**Example body**

```
{
  "description": "string",
  "copyrightHolder": "Dirk Dirkington"
}
```

### HTTP DELETE

Delete an image from an offer

### HTTP POST

Not supported

### HTTP GET

Not supported



## Set main image

The main image is the only image shown in search-result listviews and the image more prominently displayed on offer-details, when the offer has multiple mediaObjects

### Resource URI

```
/events/{cdbid}/images/main
```

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |


### HTTP PUT

| Property	| Type | Description |
|--|--|--|
| mediaObjectId | uuid | unique identifier for an image |

**Example body**

```
{
  "mediaObjectId": "73695986-e4cf-4b29-8699-13d7cd77af8c"
}
```

### HTTP DELETE

Not supported

### HTTP POST

Not supported

### HTTP GET

Not supported
