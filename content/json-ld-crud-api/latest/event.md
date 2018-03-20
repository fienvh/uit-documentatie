---
---

# Event

## Create an event with new id

**URI & method**

```
POST /imports/events/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update an event with existing id

**URI & method**

```
PUT /imports/events/{cdbid}
```

If successful, this returns a 200 response code with the used id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Properties

Mandatory properties:
1. mainLanguage
2. name
3. calendarType
  * startDate: in combination with `single`, `multiple`, `periodic`
  * endDate: in combination with `single`, `multiple`, `periodic`
  * subEvents: in combination with `multiple`
4. terms
5. location


### mainLanguage

**Example**

```
"mainLanguage": "en"
```
mainLanguage must have a corresponding translation in `name` property

### name

**Example**

```
 "name": {
    "nl": "event name in NL",
    "en": "event name in EN"
  }
```

### calendarType

**Example**

```
 "calendarType": "multiple"
```
possible values: `single`, `multiple`, `periodic`, `permanent`

### startDate

**Example**

```
"startDate": "2018-04-01T14:45:00+01:00"
```
should be a valid dateTime
Only to be used in combination with calendarType `single`, `multiple`, `periodic`

### endDate

**Example**

```
"endDate": "2018-06-30T18:45:00+01:00"
```
should be a valid dateTime
Only to be used in combination with calendarType `single`, `multiple`, `periodic`

### subEvents

**Example**

```
 "subEvent": [
        {
            "@type": "Event",
            "startDate": "2018-04-01T14:45:00+01:00",
            "endDate": "2018-04-01T18:45:00+01:00"
        },
        {
            "@type": "Event",
            "startDate": "2018-05-01T14:45:00+01:00",
            "endDate": "2018-05-01T18:45:00+01:00"
        },
        {
            "@type": "Event",
            "startDate": "2018-06-01T14:45:00+01:00",
            "endDate": "2018-06-01T18:45:00+01:00"
        }
    ]
```

Only in combination with calendarType `single` and `multiple`. Mandatory when calendarType `multiple` is chosen.

### openingHours

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
only to be used in combination with calendarType `periodic` of `permanent`

### terms

**Example**

```
"terms": [
    {
      "id": "0.50.4.0.0"
    },
    {
      "id": "0.3.2.0.0"
    }
  ]
}
```
Must contain 1 id for eventtype, can be combined with a theme id.

See documentation for [eventTypes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_aanbod/) and [event themes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/combinatie_type_thema/)

### location

**Example**

```
 "location": {
    "@id": "https://io.uitdatabank.be/place/efaa2c11-bd42-4828-8579-4ee50e811f01"
  }
```
This must be a existing placeId

### audience
[TO DO]

### bookingInfo
[TO DO]

### contactPoint
[TO DO]

### description
[TO DO]

### facility
[TO DO]

### labels
[TO DO]

### mediaObject & image
[TO DO]

### organizer
[TO DO]

### price
[TO DO]

### typicalAgeRange
[TO DO]

### sameAs
[TO DO]

### availableFrom
[TO DO]
