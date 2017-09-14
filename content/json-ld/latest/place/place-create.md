---
---

# Create place 

**Method + URL**

```
POST /places/
```

To create a new place the object-body must contain the following properties:
- name
- type
- address
- calendarType


The initial POST request contains a JSON body with all mandatory fields. These fields can be edited separately with individual PUT requests.
See specific PUT requests for definitions of each property

**Example body**

```
{
  "name": {
    "nl": "Café Den Hemel"
  },
  "type": {
    "id": "ekdc4ATGoUitCa0e6me6xA",
    "label": "Horeca",
    "domain": "eventtype"
  },
  "address": {
    "addressCountry": "BE",
    "addressLocality": "Scherpenheuvel-Zichem",
    "postalCode": "3271",
    "streetAddress": "Hoornblaas 107"
  },
  "calendarType": "permanent",
  "openingHours": [
    {
      "dayOfWeek": [
        "monday", 
        "wednesday", 
        "thursday", 
        "friday"
      ], 
      "opens": "13:00",
      "closes": "23:59"
    }, 
    {
      "dayOfWeek": [
        "monday", 
        "tuesday", 
        "thursday", 
        "friday", 
        "saturday"
      ], 
      "opens": "00:00",
      "closes": "01:00"
    }, 
    {
      "dayOfWeek": [
        "saturday", 
        "sunday"
      ], 
      "opens": "15:00",
      "closes": "23:59"
    }, 
    {
      "dayOfWeek": [
        "saturday", 
        "sunday"
      ], 
      "opens": "00:00",
      "closes": "03:00"
    }
  ]
}
```