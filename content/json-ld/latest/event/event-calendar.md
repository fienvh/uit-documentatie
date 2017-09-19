---
---

# Calendar

The calendar information for an event consists of:
- a combination 'calendarType + openingHours' OR 'calendarType + timestamps'
- a startDate and endDate

**Method + URL**

```
PUT /events/{cdbid}/calendar
```

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

## calendarType

An event can have one of the following calendarTypes:
- single: one timestamp
- multiple: multiple timestamps
- periodic: a period with startdate and enddate

calendarType 'permanent' is reserved for offertype 'place'!

**Definition**

``
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

## timeSpans

timeSpans can be combined with calendarTypes 'single' and 'multiple'.
One timeSpans consists of a start and end date-time


**Definition**

``
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


## openingHours

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

## startDate

The first occurence of the event

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

## endDate

The last occurence of the event

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

