---
---

# Organizer

Update a place with a new organizer. For a list of all organizers, see GET /organizers/ documentation.

Organizer is not required, a place can only have one organizer.

## Resource URI

```
/places/{placeId}/organizer/{organizerId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |

## HTTP PUT

Add specified organizerId to an offer

## HTTP DELETE

Delete specified organizerId from an offer

## HTTP POST

Not supported

## HTTP GET

Not supported
