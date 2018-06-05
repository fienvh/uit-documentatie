---
---

# Update contact point
Contact point can contain one or more of the following properties, each property can contain multiple entries:
- url
- email
- phone

## HTTP request

```
PUT /organizers/{organizerId}/contactPoint
```

**HTTP DELETE**

Not supported: to remove specific contact-info, perform PUT request with empty contactPoint-property

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706598427351 |

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
PUT  https://io-test.uitdatabank.be/organizers/{organizerId}/contactPoint
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

[
  {
    "type": "phone",
    "value": "013/445566"
  },
  {
    "type": "url",
    "value": "https://www.test.be"
  },
  {
    "type": "email",
    "value": "info@test.be"
  }
]
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
