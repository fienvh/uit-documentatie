---
---

# Organizer

## Create an organizer with new id

**URI & method**

```
POST /imports/organizers/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update an organizer with existing id

**URI & method**

```
PUT /imports/organizers/{cdbid}
```

If successful, this returns a 200 response code with the used id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Example request - full organizer

```
curl -X "POST" "http://io-test.uitdatabank.be/imports/organizers/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjExNzE2LCJleHAiOjE1MjEyMTUzMTYsIm5iZiI6MTUyMTIxMTcxNn0.Ng2RLO-n-4cmvvbOPPNiHxT3vGlHAPgUlARpVnaeyuJ2pyH45sOVmrtxRivbDPpgIWhozulwmcjvNeZ-fH1VKGGUJsnNmre2fxlinj2AmCgOZ_P83xCWSN-Lcl_7AzMxzminRFOGG7PE7ilAZ3wWlbFUFRkAhDs83BeTOHuHyM9bLVuXmxVZgtPEmapMTEdogxQ5PiR8FPLpOVYCbmQkSddfqs0KA1pVuGYFHm6tRiNd5WRd962_Hg2caw6vxccNyMQ17zYiI7lJDZpoQfp6v-yGjFBNOIroWSA8wOG12h62OyDp3YnRb9v40m35FERzqs70uBc3DMk1q80cG2VnEA' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -d $'{
  "mainLanguage": "nl",
  "name": {
    "fr": "publiq vzw",
    "nl": "publiq vzw"
  },
  "url": "https://www.publiq.be/2",
  "address": {
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Brussel",
      "postalCode": "1000",
      "streetAddress": "Anspachlaan 107"
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
  }
}'
```

## Properties

**Mandatory properties**

1. `mainLanguage`
2. `name`
3. `url`

### mainLanguage

1. must have a corresponding translation in all translatable properties:
  * `name`
  * `address`

**Example**

```
"mainLanguage":"nl"
```

### name

* Must contain at least the mainLanguage translation, can contain multiple translations.

**Example**

```
 "name": {
    "nl": "organizer name in NL",
    "en": "organizer name in EN"
  }
```

### Url

* Every organizer must have a unique URL

**Example**

```
"url": "https://www.organizertest.be"
```

### address

* Must contain the `mainLanguage` translation

**Example**

```
  "address": {
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Brussel",
      "postalCode": "1000",
      "streetAddress": "Anspachlaan 107"
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

### label
[TO DO]
