---
---

# Description

Add a description in the given language for an offer. 
Description is not limited in size, but it is recommended to use the first 200 characters of the description for promotional copy as these characters are visible in list-view of results.

Keep in mind:

-  Description should be UTF-8 encoded
- Linebreaks are encoded as `\n`

## Resource URI

```
/places/{placeId}/description/{lang}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| lang	| string | 2-character language reference | nl |

## HTTP PUT

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your place |

**Example body**


```
{
  "description": "This is a description.\n This is a new line."
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported

