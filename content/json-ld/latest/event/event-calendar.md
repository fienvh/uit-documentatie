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

## calendarType

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

## timestamps

Timestamps can be combined with calendarTypes 'single' and 'multiple'.
One timestamp consists of:

- a date (YYYY-MM-DD)

```
{
  "type": "string",
  "format": "date",
  "example": "2015-05-07"
}
```

- a startHour and endHour (HH:MM)

```
{
  "type": "string",
  "example": "14:30"
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