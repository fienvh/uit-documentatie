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
