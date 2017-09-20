---
---

# Calendar

The calendar information for an event consists of:
- a combination 'calendarType + openingHours' OR 'calendarType + timestamps'
- a startDate and endDate

## Resource URI

```
/events/{eventId}/calendar
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |


## HTTP PUT

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



**Example body**

```
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

### calendarType

An event can have one of the following calendarTypes:
- single: one timestamp
- multiple: multiple timestamps
- periodic: a period with startdate and enddate

calendarType 'permanent' is reserved for offertype 'place'!

**Definition**

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


**Definition**

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

**Definition**

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

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

### endDate

The last occurence of the event

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported

