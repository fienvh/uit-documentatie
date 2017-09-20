---
---

# Booking info 

Booking info can contain one or more of the following properties, limited to one of each:
- url & urlLabel: Deeplink to online ticketlink, urlLabel is used for copy to print on ticket-link button
- email
- phone
- availabilityStarts & availabilityEnds: Used to define a date range during which it is possible to make reservations or book tickets

## Resource URI

```
/events/{cdbid}/bookingInfo
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| bookingInfo | object | object containing one or more properties | |
| url | url | ticketlink | https://www.domain.be/reservations/eventname |
| urlLabel | string | the copy shown on the 'make reservations'-button displayed instead of the url | Reserveer plaatsen |
| email | email | emailaddress used for booking | user@example.com |
| phone | string | phonenumber used for booking | 0123456789 |
| availabilityStarts | date-time | the starttime for bookings | 2015-05-07T12:02:53+00:00 |
| availabilityEnds | date-time | the endtime for bookings | 2015-05-07T12:02:53+00:00 |


**Example body**

```
{
  "bookingInfo": {
    "url": "https://www.domain.be/reservations/eventname",
    "urlLabel": "Reserveer plaatsen",
    "email": "user@example.com",
    "phone": "0123456789",
    "availabilityStarts": "2015-05-01T00:00:00+00:00",
    "availabilityEnds": "2015-07-01T00:00:00+00:00"
  }
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported: to remove (specific) bookingInfo perform a PUT request with empty properties