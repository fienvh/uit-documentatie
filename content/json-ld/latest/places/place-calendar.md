---
---

# Update calendar

The calendar information for a place consists of
- calendarType 'permanent' with or without openingHours
- calendarType 'periodic' with or without openingHours


## HTTP request

```
PUT /places/{placeId}/calendar
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
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| calendarType | string | periodic or permanent | permanent |
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
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "calendarType": "permanent",
  "openingHours": [
    {
      "dayOfWeek": [
        "monday",
        "wednesday",
        "friday"
      ],
      "opens": "14:30",
      "closes": "17:00"
    }
  ]
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

calendarType 'permanent' and 'periodic' can be used for offertype 'place', but 'permanent' is preferred and this calendarType is hardcoded in UiTdatabank when adding a new place.

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

### openingHours

calendarType 'permanent' can be combined with openingHours
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

calendarType 'periodic' can be combined with a startDate and endDate

```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```

### endDate

calendarType 'periodic' can be combined with a startDate and endDate


```
{
  "type": "string",
  "format": "date-time",
  "example": "2015-05-07T14:30:00+00:00"
}
```
