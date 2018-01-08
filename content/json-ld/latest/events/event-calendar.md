---
---

# Update Calendar info

The calendar information for an event consists of:
- a combination 'calendarType + openingHours' OR 'calendarType + timestamps'
- a startDate and endDate

## HTTP request

```
PUT /events/{eventId}/calendar
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |


## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |


## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| calendarType | string | single, multiple, periodic | multiple |
| timeSpans | object | object containing an array of timespans | |
| start | date-time | the starttime for a timespan | 2015-05-07T12:02:53+00:00 |
| end | date-time | the endtime for a timespan | 2015-05-07T12:02:53+00:00 |
| startDate | date-time | the starttime of the first timespan | 2015-05-07T12:02:53+00:00 |
| endDate | date-time | the endtime of the last timespan | 2015-05-07T12:02:53+00:00 |
| openingHours | object | object containing an array of weekdays with matching opening hours |  |
| dayOfWeek | array | array of weekdays | monday |
| opens | time | opening time | 09:00 |
| closes | time | closing time | 17:30 |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"calendarType": "multiple",
 "timeSpans": [
    {
      "start": "2015-05-07T12:02:53+00:00",
      "end": "2015-05-07T14:02:53+00:00"
    },
    {
      "start": "2015-05-08T12:02:53+00:00",
      "end": "2015-05-08T14:02:53+00:00"
    },
    {
      "start": "2015-05-09T12:02:53+00:00",
      "end": "2015-05-09T14:02:53+00:00"
    }
  ],
  "startDate": "2015-05-07T12:02:53+00:00",
  "endDate": "2015-05-09T14:02:53+00:00"
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```

## Definitions

### calendarType

An event can have one of the following calendarTypes:
- single: one timestamp
- multiple: multiple timestamps
- periodic: a period with startdate and enddate

calendarType 'permanent' is reserved for offertype 'place'!


```
{
  "type": "string",
  "enum": [
    "single",
    "multiple",
    "periodic",
    "permanent"
  ],
  "example": "single"
}
```

### timeSpans

timeSpans can be combined with calendarTypes 'single' and 'multiple'.
One timeSpans consists of a start and end date-time

```
{
    "type": "array",
    "items": {
        "type": "object",
        "properties": {
            "start": {
                "type": "string",
                "format": "date-time",
                "example": "2015-05-07T12:02:53+00:00"
            },
            "end": {
                "type": "string",
                "format": "date-time",
                "example": "2015-05-07T12:02:53+00:00"
            }
        }
    }
}
```


### openingHours

openingHours can be combined with calendarTypes 'periodic' and 'permanent'
openingHours contain an array of weekdays with matching opening hours and closing hours

```
{
  "type": "array",
  "items": {
    "type": "object",
    "properties": {
      "dayOfWeek": {
        "type": "array",
        "items": {
          "type": "string",
          "enum": [
            "monday",
            "tuesday",
            "wednesday",
            "thursday",
            "friday",
            "saturday",
            "sunday"
          ]
        }
      },
      "opens": {
        "type": "string",
        "example": "14:30"
      },
      "closes": {
        "type": "string",
        "example": "17:00"
      }
    }
  }
}
```

### startDate

The first occurence of the event

```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

### endDate

The last occurence of the event


```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```
