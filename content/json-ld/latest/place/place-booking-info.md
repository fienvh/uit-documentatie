---
---

# Booking info 

Booking info can contain one or more of the following properties, limited to one of each:
- url & urlLabel
Deeplink to online ticketlink, urlLabel is used for copy to print on ticket-link button
- email
- phone
- availabilityStarts & availabilityEnds
Used to define a date range during which it is possible to make reservations or book tickets

**Method + URL**

```
PUT /places/{cdbid}/bookingInfo
```


**Definition**
```
{
  "required": [
    "bookingInfo"
  ],
  "properties": {
    "bookingInfo": {
      "type": "object",
      "properties": {
        "url": {
          "type": "string",
          "format": "url",
          "example": "https://www.domain.be/reservations/eventname"
        },
        "urlLabel": {
          "type": "string",
          "example": "Reserveer plaatsen"
        },
        "email": {
          "type": "string",
          "format": "email",
          "example": "user@example.com"
        },
        "phone": {
          "type": "string",
          "example": "0123456789"
        },
        "availabilityStarts": {
          "$ref": "../../event/definitions/date-time.definition.json"
        },
        "availabilityEnds": {
          "$ref": "../../event/definitions/date-time.definition.json"
        }
      }
    }
  }
}
```