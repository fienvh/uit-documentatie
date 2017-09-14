---
---

# Calendar

The calendar information for a place consists of calendarType 'permanent' with or without openingHours


**Method + URL**

```
PUT /places/{cdbid}/calendar
```

## calendarType

Only calendarType 'permanent' can be used for offertype 'place'


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
