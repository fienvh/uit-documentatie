---
---

# Possible exceptions and deprecated data


## availableTo

```
"availableTo": "2018-11-28T23:59:59+01:00",
```
It is possible that some events and places do not have an `availableTo` property. In that case it can be considered an event with `"availableTo": "2100-01-01T00:00:00+00:00"`

## completedLanguages

```
"completedLanguages": [
  "nl",
  "en"
],
```
When an offer contains all the translatable fields in one specific language, this language is added to the `completeLanguages` property. These translatable fields are different for every entity:

**Event**
* name
* description
* bookingInfo/urlLabel
* priceInfo/name
* mediaObject/inLanguage

**Place**
* name
* description
* address
* bookingInfo/urlLabel
* priceInfo/name
* mediaObject/inLanguage

**Organizer**
* name
* address

## bookingInfo

```
"bookingInfo": {
  "availabilityEnds": "2017-11-28T12:36:11+01:00",
  "availabilityStarts": "2018-06-28T12:36:11+01:00",
  "email": "info@test.be",
  "phone": null,
  "url": "http://www.kasteelvanhorst.be/praktisch",
  "urlLabel": {
    "en": "Reserve seats",
    "nl": "Reserveer plaatsen"
  },
},
```

* The dateTime for `availabilityEnds` and `availabilityStarts` may contain a deprecated dateTime format `2018-02-20T15:11:26.034Z`

* The three properties `email`, `url`, `phone` are not validated by the API and can all contain any string.

* [UNDER DEVELOPMENT] urlLabel should be a translatable field.

* bookingInfo may contain deprecated properties, these will be deleted from existing offers and should **NOT** be used in future development:
-- name
-- description
-- price
-- currency

## contactPoint

```
"contactPoint": {
  "email": [],
  "phone": [
    "016 62 33 45"
  ],
  "url": [
    "http://www.kasteelvanhorst.be/families",
    "http://www.herita.be"
  ]
}
```

The three properties `email`, `url`, `phone` are not validated by the API and can all contain any string.

## creator

```
"creator": "Stiksels"
```

The creator should contain the nickname for the UiTiD user that created the offer. It is possible that this field contains an emailaddress (for events and places) or a `UUID (nick)` for organizers

## creatorId

```
"creatorId": "86a02c65-696d-5b12-a9b1-9e3bc8e6303c"
```

[UNDER DEVELOPMENT] This field will contain the UUID for the UiTiD user that created the offer.

## address

```
"address": {
  "en": {
    "addressCountry": "BE",
    "addressLocality": "Holsbeek",
    "postalCode": "3220",
    "streetAddress": "Horststraat 28"
  }
  ```

It is possible that an address does not have a language property yet.

## geo

```
"geo": {
  "latitude": 50.9321713,
  "longitude": 4.8320582
},
```

* It is possible that not every place address has geo-coordinates.

* Geocoordinates are not calculated for an organizer.


## priceInfo

```
"priceInfo": [
  {
    "category": "base",
    "name": {
      "en": "Base tariff",
      "nl": "Basistarief"
      },
    "price": 6,
    "priceCurrency": "EUR"
  }
```

* [UNDER DEVELOPMENT] the name for a price should be a translatable field.
