---
---

# Place

## Create a place with new id

**URI & method**

```
POST /imports/places/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
  "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update a place with existing id

**URI & method**

```
PUT /imports/places/{cdbid}
```

If successful, this returns a 200 response code with the used id in response body

**Example response**

```
{
  "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

### Example request - full place

```
curl -X "POST" "http://io-test.uitdatabank.be/imports/places/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjExNzE2LCJleHAiOjE1MjEyMTUzMTYsIm5iZiI6MTUyMTIxMTcxNn0.Ng2RLO-n-4cmvvbOPPNiHxT3vGlHAPgUlARpVnaeyuJ2pyH45sOVmrtxRivbDPpgIWhozulwmcjvNeZ-fH1VKGGUJsnNmre2fxlinj2AmCgOZ_P83xCWSN-Lcl_7AzMxzminRFOGG7PE7ilAZ3wWlbFUFRkAhDs83BeTOHuHyM9bLVuXmxVZgtPEmapMTEdogxQ5PiR8FPLpOVYCbmQkSddfqs0KA1pVuGYFHm6tRiNd5WRd962_Hg2caw6vxccNyMQ17zYiI7lJDZpoQfp6v-yGjFBNOIroWSA8wOG12h62OyDp3YnRb9v40m35FERzqs70uBc3DMk1q80cG2VnEA' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -d $'{
  "mainLanguage": "nl",
  "name": {
    "en": "Publiq",
    "fr": "Publiq",
    "nl": "Publiq"
  },
  "address": {
    "en": {
      "addressCountry": "BE",
      "addressLocality": "Brussels",
      "postalCode": "1080",
      "streetAddress": "Henegouwenkaai 41-43"
    },
    "fr": {
      "addressCountry": "BE",
      "addressLocality": "Bruxelles",
      "postalCode": "1080",
      "streetAddress": "Quai du Hainaut 41-43"
    },
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Brussel",
      "postalCode": "1080",
      "streetAddress": "Henegouwenkaai 41-43"
    }
  },
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
  "calendarType": "permanent",
  "openingHours": [
    {
      "closes": "16:30",
      "dayOfWeek": [
        "monday",
        "saturday",
        "sunday"
      ],
      "opens": "10:00"
    }
  ],
  "organizer": {
    "@id": "https://io-acc.uitdatabank.be/organizers/02bdbd1b-672e-461e-85b2-9ce3746fb1a6"
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
  "terms": [
    {
      "id": "Yf4aZBfsUEu2NsQqsprngw"
    }
  ],
  "typicalAgeRange": "3-15",
  "availableFrom": "2018-12-30T18:45:00+01:00"
}'
```

## Properties

Mandatory properties:
1. mainLanguage
2. name
3. calendarType
  * startDate: in combination with `periodic`
  * endDate: in combination with `periodic`
4. terms
5. address

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
    "nl": "place name in NL",
    "en": "place name in EN"
  }
```

### calendarType

**Example**

```
 "calendarType": "periodic"
```
possible values: `periodic`, `permanent`

### startDate

**Example**

```
"startDate": "2018-04-01T14:45:00+01:00"
```
should be a valid dateTime
Only to be used in combination with calendarType `periodic`

### endDate

**Example**

```
"endDate": "2018-06-30T18:45:00+01:00"
```
should be a valid dateTime
Only to be used in combination with calendarType `periodic`

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
      "id": "OyaPaf64AEmEAYXHeLMAtA"
    }
  ]
```
Must contain 1 id for placeType, can NOT be combined with a theme id.

See documentation for [placeTypes](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_locatie/).


### address

**Example**

```
  "address": {
    "en": {
      "addressCountry": "BE",
      "addressLocality": "Brussels",
      "postalCode": "1000",
      "streetAddress": "Boulevard Anspach 107"
    },
    "fr": {
      "addressCountry": "BE",
      "addressLocality": "Bruxelles",
      "postalCode": "1000",
      "streetAddress": "Boulevard Anspach 107"
    },
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Brussel",
      "postalCode": "1000",
      "streetAddress": "Anspachlaan 107"
    }
  }
```

### bookingInfo

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

**Example**

```
"description": {
  "en": "this is a description",
  "nl": "dit is de beschrijving"
}
```

### mediaObject & image
[TO DO]

### labels
[TO DO]

### organizer

**Example**

```
"organizer": {
  "@id": "https://io-test.uitdatabank.be/organizers/02bdbd1b-672e-461e-85b2-9ce3746fb1a6"
}
```

### priceInfo

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

**Example**

```
"availableFrom": "2018-03-30T18:45:00+01:00"
```
