---
---

# Type

One of the event types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'event': [insert link]

Type is required for every event and an event can only have one typeid.

## Resource URI

```
/events/{eventId}/type/{typeId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| typeId	| string | unique event type-id | 0.50.4.0.0 |

## HTTP PUT

Update offer with given type-id

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported