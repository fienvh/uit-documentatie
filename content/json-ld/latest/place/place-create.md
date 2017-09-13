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
See PUT requests below for definitions of each property