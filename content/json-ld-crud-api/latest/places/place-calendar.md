---
---

# calendar

## calendarType

* possible values: `periodic`, `permanent`

**Example**

```
"calendarType": "periodic"
```

## startDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be smaller than or equal to `endDate`
* Only to be used in combination with calendarType `periodic`

**Example**

```
"startDate": "2018-04-01T14:45:00+01:00"
```

## endDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be greater than or equal to `startDate`
* Only to be used in combination with calendarType `periodic`

**Example**

```
"endDate": "2018-06-30T18:45:00+01:00"
```

## openingHours

* Can be used in combination with calendarType `periodic` or `permanent`

**Example**

```
"openingHours": [
  {
    "opens": "10:00",
    "closes": "16:30",
    "dayOfWeek": [
      "monday",
      "saturday",
      "sunday"
    ]
  }
]
```
