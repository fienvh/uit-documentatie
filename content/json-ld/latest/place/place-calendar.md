---
---

# Calendar

The calendar information for a place consists of calendarType 'permanent' with or without openingHours


**Method + URL**

```
PUT /places/{cdbid}/calendar
```

**Example body**

```
{
 "calendarType": "permanent",
  "openingHours": [
    {
      "dayOfWeek": [
        "monday"
      ],
      "opens": "14:30",
      "closes": "17:00"
    }
  ]
}
```


## calendarType

calendarType 'permanent' and 'periodic' can be used for offertype 'place', but 'permanent' is preferred and this calendarType is hardcoded in UiTdatabank when adding a new place.


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

## openingHours

calendarType 'permanent' can be combined with openingHours
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

calendarType 'periodic' can be combined with a startDate and endDate

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

## endDate

calendarType 'periodic' can be combined with a startDate and endDate

**Definition**
```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```
