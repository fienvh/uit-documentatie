---
---

# Location

Update an event with a new location. For a list of all locations, see GET /places/ documentation.

Location is required, an event can only have one location.

## Resource URI

```
/events/{eventId}/location/{locationId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| locationId	| uuid | unique placeId | d595414a-13e0-4dd2-b4bd-706599427351 |

## HTTP PUT

Update event with given locationId-id

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported