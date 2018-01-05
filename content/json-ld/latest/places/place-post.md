---
---

# Create place

## HTTP request

```
POST /places/
```

## Request headers

| Header        | Value                     |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required  |
| X-Api-Key     | {apiKey}. Required        |
| Content-Type  | application/json          |

## Request body

To create a new place the object-body must contain the following properties:
- name
- type
- address
- calendarType

The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See specific update requests for definitions of each property

## Response

If successful, this method returns a `200` response code and a placeId and url in the response body.

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/places/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

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

**Response**

The following is an example of the response.

```
200 OK

{
  "placeId": "03116768-1abc-405a-93d7-ba6ede52fe78",
  "url": "https://io-test.uitdatabank.be/place/03116768-1abc-405a-93d7-ba6ede52fe09"
}
```
