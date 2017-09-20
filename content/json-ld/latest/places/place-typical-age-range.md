---
---

# typicalAgeRange

Add or remove the age range appropriate for the offer. 
Don't use decimals


## Resource URI

```
/places/{placeId}/typicalAgeRange
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## HTTP PUT

Add a specific age range to an offer

| Property	| Type | Description | Example |
|--|--|--|--|
| typicalAgeRange | string | Specify the lower and upper age range applicable for the offer. Do not use decimals | 3-4 |


**Example body**
```
{
  "typicalAgeRange": "1-12"
}
```

## HTTP DELETE

Delete any age range from an offer (no body required)

## HTTP POST

Not supported

## HTTP GET

Not supported
