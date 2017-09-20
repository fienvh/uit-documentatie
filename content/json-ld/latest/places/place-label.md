---
---

# Labels 

Add or remove a specific label from an offer

## Resource URI

```
/places/{placeId}/labels/{label}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| label	| string | unique labelname (case insensitive) | Mijn Label |

## HTTP PUT

Add specified labelname to an offer
> If the specified label is not yet available in UiTdatabank a new label will be created and linked to the offer

## HTTP DELETE

Delete specified labelname from an offer

## HTTP POST

Not supported

## HTTP GET

Not supported