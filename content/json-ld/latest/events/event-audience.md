---
---

# Target audience

An object containing the audience information to set for the event. 
By default every event has audienceType 'everyone'
Events with audienceType 'members' and 'education' are excluded from search results by default filters.

## Resource URI

```
/events/{eventId}/audience
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| audienceType | string | everyone, members, education | everyone |


**Example body**

```
{
  "audienceType": "everyone"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported