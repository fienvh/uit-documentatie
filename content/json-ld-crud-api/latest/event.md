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

### Example request - complete event

```
curl -X "POST" "https://io-test.uitdatabank.be/imports/events/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjE1NTM0LCJleHAiOjE1MjEyMTkxMzQsIm5iZiI6MTUyMTIxNTUzNH0.pQzQw1Qr1JB4KYo_rxHJ3ZBH_L0JdabvuG1Lkwcwp0Vjh8B6FYR4GzWe34gykH8rZBtUyVRbupPSmCQMxuUJvzcOdpfFYkdGGBov1Nb1jJ-tmRFvKkFJOeDpylMhadckUF1qGNIZ0zR2jZS2fKSd5ZhNUUta-zknyo5gGCjbT7DiZy1Psn4HBqLKGSB9mOE9CmRxytQqUq5VKHhCjtlXMz-Iw93aT3v7yHELHbrpFdkQYahUY1PoEr3d06Ze8tAB2Rn4pAPlZ27TOLKxlVZMYq8ZjkD_tg0y7Iy6rXjyWJ8dGJ2Y8hOKbx9u-L0iEHj8gAcBom8vQbCTy8mtULAuDw' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: application/json; charset=utf-8' \
     -d $'{
  "availableFrom": "2018-03-30T18:45:00+01:00",
  "bookingInfo": {
    "availabilityEnds": "2019-12-30T01:02:03+01:00",
    "availabilityStarts": "2018-12-30T01:02:03+01:00",
    "email": "test@test.com",
    "phone": "123",
    "url": "https://www.test.com",
    "urlLabel": {
      "nl": "Test"
    }
  },
  "contactPoint": {
    "email": [
      "info@test.be",
      "contact@test.be"
    ],
    "phone": [
      "002345678900",
      "003188987689"
    ],
    "url": [
      "https://www.t3.com"
    ]
  },
  "description": {
    "en": "this is a description",
    "nl": "dit is de beschrijving"
  },
  "location": {
    "@id": "https://io-test.uitdatabank.be/place/b2064ffa-f2d6-4fda-9573-2d3abfa069d6"
  },
  "mainLanguage": "nl",
  "name": {
    "en": "event name in EN",
    "nl": "event name in NL"
  },
  "organizer": {
    "@id": "https://io-test.uitdatabank.be/organizers/02bdbd1b-672e-461e-85b2-9ce3746fb1a6"
  },
  "priceInfo": [
    {
      "category": "base",
      "name": {
        "nl": "Basistarief"
      },
      "price": 11,
      "priceCurrency": "EUR"
    },
    {
      "category": "tariff",
      "name": {
        "nl": "Senioren"
      },
      "price": 6,
      "priceCurrency": "EUR"
    }
  ],
  "calendarType": "multiple",
  "startDate": "2018-04-01T14:45:00+01:00",
  "endDate": "2018-06-01T18:45:00+01:00",
  "subEvent": [
    {
      "@type": "Event",
      "endDate": "2018-04-01T18:45:00+01:00",
      "startDate": "2018-04-01T14:45:00+01:00"
    },
    {
      "@type": "Event",
      "endDate": "2018-05-01T18:45:00+01:00",
      "startDate": "2018-05-01T14:45:00+01:00"
    },
    {
      "@type": "Event",
      "endDate": "2018-06-01T18:45:00+01:00",
      "startDate": "2018-06-01T14:45:00+01:00"
    }
  ],
  "terms": [
    {
      "id": "0.50.4.0.0"
    },
    {
      "id": "1.8.2.0.0"
    }
  ],
  "typicalAgeRange": "3-15",
  "audience": {
    "audienceType": "members"
    }
}'
```

## Properties

**Mandatory properties**

1. `mainLanguage`
2. `name`
3. `calendarType`
  * `startDate`: in combination with `single`, `multiple`, `periodic`
  * `endDate`: in combination with `single`, `multiple`, `periodic`
  * `subEvents`: in combination with `multiple`
4. `terms`
5. `location`


### mainLanguage

1. must have a corresponding translation in all translatable properties:
  * `name`
  * `description`
  * `bookingInfo/url/urlLabel`
  * `priceInfo/name`


**Example**

```
"mainLanguage": "nl"
```

### name

* Must contain at least the mainLanguage translation, can contain multiple translations.

**Example**

```
"name": {
  "nl": "event name in NL",
  "en": "event name in EN"
}
```

### calendarType

1. Possible values: `single`, `multiple`, `periodic`, `permanent`.
* `single`: must be combined with `startDate` and `endDate`, can contain 1 `subEvent`
* `multiple`: must be combined with `startDate`, `endDate` and at least 2 `subEvent`s
* `periodic`: must be combined with `startDate`, `endDate` and `subEvents`, can contain `openingHours`
* `permanent`: can contain `openingHours` (this calendarType is not preferred for events, use offertype `place` instead)

**Example**

```
"calendarType": "multiple"
```

### startDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be smaller than or equal to `endDate`
* Only to be used in combination with calendarType `single`, `multiple`, `periodic`

**Example**

```
"startDate": "2018-04-01T14:45:00+01:00"
```

### endDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be greater than or equal to `startDate`
* Only to be used in combination with calendarType `single`, `multiple`, `periodic`

**Example**

```
"endDate": "2018-06-30T18:45:00+01:00"
```

### subEvent

* Only used in combination with calendarType `single` and `multiple`.
* Mandatory when calendarType `multiple` is chosen.

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

### openingHours

* only to be used in combination with calendarType `periodic` or `permanent`

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

### terms

* Must contain only 1 `id` for eventtype, can be combined with a theme id.
* Can contain `domain` and `label`, but only `id` will be validated
* See documentation for [eventTypes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_aanbod/) and [event themes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/combinatie_type_thema/)

**Example 1**

```
"terms": [
  {
    "id": "0.50.4.0.0"
  },
  {
    "id": "1.8.2.0.0"
  }
]
```

**Example 2**

```
"terms": [
  {
    "domain": "eventtype",
    "id": "0.50.4.0.0",
    "label": "Concert"
  },
  {
    "domain": "theme",
    "id": "1.8.2.0.0",
    "label": "Jazz en blues"
  }
]
```

### location

* This must be a existing and valid placeId

**Example**

```
"location": {
  "@id": "https://io-test.uitdatabank.be/place/efaa2c11-bd42-4828-8579-4ee50e811f01"
}
```

### audience

* Can contain one of the following: `everyone`, `members`, `education`.
* When not specified, this will default to `everyone`. The search api excludes by default all offers with audienceType `members` and `education`.

**Example**

```
"audience": {
  "audienceType": "members"
}
```

### bookingInfo

Can contain the following properties:

1. `phone`: can contain any string, only 1 entry allowed
2. `email`: must be formed valid, only 1 entry allowed
3. `url`: must be formed valid, only 1 entry allowed
4. `urlLabel`:
  * must contain at least the mainLanguage translation
  * only to be used in combination with `url`
5. `availabilityStarts` and `availabilityEnds`
  * Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
  * only in combination with one of the available bookingInfo properties `url`, `email`, `phone`

To delete one bookingInfo property from an offer, remove it from the bookingInfo object and update the offer.

**Example**

```
"bookingInfo": {
  "availabilityEnds": "2019-12-30T01:02:03+01:00",
  "availabilityStarts": "2018-12-30T01:02:03+01:00",
  "email": "test@test.com",
  "phone": "123",
  "url": "https://www.test.com",
  "urlLabel": {
    "nl": "Test"
  }
}
```

### contactPoint

Can contain the following properties:

* `phone`: can contain any string, multiple entries allowed
* `email`: must be formed valid, multiple entries allowed
* `url`: must be formed valid, multiple entries allowed

To delete one contactPoint property from an offer, remove it from the contactPoint object and update the offer.

**Example**

```
"contactPoint": {
  "email": [
    "info@test.be",
    "contact@test.be"
  ],
  "phone": [
    "002345678900",
    "003188987689"
  ],
  "url": [
    "https://www.t3.com"
  ]
}
```

### description

* Must contain at least the `mainLanguage` translation, can contain multiple translations.

**Example**

```
"description": {
  "en": "this is a description",
  "nl": "dit is de beschrijving"
}
```

### organizer

* must be a existing and valid organizerId

**Example**

```
"organizer": {
  "@id": "https://io-test.uitdatabank.be/organizers/02bdbd1b-672e-461e-85b2-9ce3746fb1a6"
}
```

### priceInfo

* Must contain category `base`
* can contain multiple additional `tariff`s
* `name` must contain at least the mainLanguage translation

**Example**

```
"priceInfo": [
  {
    "category": "base",
    "name": {
      "nl": "Basistarief"
    },
    "price": 11,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": {
      "nl": "Senioren"
    },
    "price": 6,
    "priceCurrency": "EUR"
  }
]
```

### typicalAgeRange

**Example**

```
"typicalAgeRange": "3-15"
```

### availableFrom

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`

**Example**

```
"availableFrom": "2018-03-30T18:45:00+01:00"
```

### labels
[TO DO]

### mediaObject & main image
[TO DO]
