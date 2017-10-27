---
---

# Type

One of the place types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'place': [insert link]

Type is required for every place and an event can only have one typeid.

## Resource URI

```
/places/{placeId}/type/{typeId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| typeId	| string | unique place type-id | BtVNd33sR0WntjALVbyp3w |

## HTTP PUT

Update offer with given type-id

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported
