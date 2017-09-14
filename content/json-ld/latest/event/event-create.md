---
---

# Create Event

**Method + URL**

```
POST /events/
```

To create a new event the object-body must contain the following properties:
- name
- type
- theme
- location
- calendarType
- startDate
- endDate

The initial POST request contains a JSON body with all mandatory fields. These fields can be edited separately with individual PUT requests.
See individual PUT requests for definitions of each property

**Example body**

```
{
  "name": {
    "nl": "Name example"
  },
  "type": {
    "id": "0.50.4.0.0",
    "label": "Concert",
    "domain": "eventtype"
  },
  "theme": {
    "id": "1.8.2.0.0",
    "label": "Jazz en blues",
    "domain": "theme"
  },
  "location": {
    "id": "6f072ba8-c510-40ac-b387-51f582650e27",
    "name": "Café Den Hemel",
    "address": {
      "addressCountry": "BE",
      "addressLocality": "Scherpenheuvel-Zichem",
      "postalCode": "3271",
      "streetAddress": "Hoornblaas 107"
    }
  },
  "calendarType": "single",
  "timestamps": [
    {
      "date": "2015-05-07",
      "startHour": "14:30",
      "endHour": "14:30"
    }
  ],
  "startDate": "2015-05-07T14:30:00+00:00",
  "endDate": "2015-05-07T14:30:00+00:00"
}
```