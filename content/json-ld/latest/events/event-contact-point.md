---
---

# Update Contact point
Contact point must contain the following properties, each property can contain zero or multiple entries:
- url
- email
- phone

## HTTP request

```
PUT /events/{eventId}/contactPoint
```

Update specific contact info from an offer

### HTTP DELETE

Not supported: to remove specific contact-info, perform PUT request with empty contactPoint-property

## Request headers

| Header        | Value                     |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required  |
| X-Api-Key     | {apiKey}. Required        |
| Content-Type  | application/json          |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| contactPoint | object | object containing one or more properties | |
| url | array | contactlink | https://www.domain.be/contact |
| email | array | emailaddress | user@example.com |
| phone | array | phonenumber | 0123456789 |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**
The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/contactPoint
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

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

**Response**
The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
