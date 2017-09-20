---
---

# Contact point
Contact point can contain one or more of the following properties, each property can contain multiple entries:
- url
- email
- phone

## Resource URI

```
/events/{eventId}/contactPoint
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| contactPoint | object | object containing one or more properties | |
| url | array | contactlink | https://www.domain.be/contact |
| email | array | emailaddress | user@example.com |
| phone | array | phonenumber | 0123456789 |


**Example body**

```
{
  "contactPoint": {
    "url": [
      "http://google.be"
    ],
    "email": [
      "user@example.com"
    ],
    "phone": [
      "0123456789"
    ]
  }
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported: to remove specific contact-info, perform PUT request with empty contactPoint