---
---

# Facilities

One or more of the facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id

## Resource URI

```
/places/{placeId}/facilities/
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| facilities | array | one or more facilityIds | 3.23.1.0.0 |

**Example body**

```
{
"facilities": [
   "3.23.2.0.0",
   "3.13.3.0.0",
   "3.17.3.0.0"
  ]
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported: to remove specific facilities, perform PUT request with empty array

