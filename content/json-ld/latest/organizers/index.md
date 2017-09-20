---
---

# Create organizer

## Resource URI

```
/organizers/
```

## HTTP POST

To create a new organizer the object-body must contain the following properties:
- website
- name


The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See specific PUT requests for definitions of each property

**Example body**

```
{
  "website": "http://www.stuk.be/",
  "name": "STUK",
  "address": {
    "addressCountry": "BE",
    "addressLocality": "Leuven",
    "postalCode": 3000,
    "streetAddress": "Sluisstraat 79"
  },
  "contact": [
    {
      "type": "url",
      "value": "https://www.facebook.com/STUKLeuven"
    }
  ]
}
```

## HTTP PUT

Not supported

## HTTP DELETE

Not supported

## HTTP GET

Not supported

