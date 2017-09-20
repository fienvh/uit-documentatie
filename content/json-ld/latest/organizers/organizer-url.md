---
---

# Description

Each organizer in UiTdatabank must have a unique URL. For more info please contact our helpdesk at `vragen@uitdatabank.be`

## Resource URI

```
/organizers/{organizerId}/url
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |


## HTTP PUT

| Property	| Type | Description |
|--|--|--|
| url | url | The url for your organizer |

**Example body**


```
{
  "url": "http://www.depot.be"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported

