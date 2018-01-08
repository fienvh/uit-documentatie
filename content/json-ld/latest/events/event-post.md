---
---

# Add Event

## HTTP request

```
POST /events/
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |


## Request body

To create a new event the object-body must contain the following properties:
- name
- type
- theme
- location
- calendar

The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See individual PUT requests for definitions of each property

## Response

If successful, this method returns a `200` response code and a eventId and url in the response body.

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/events/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

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
 "calendarType": "multiple",
 "timeSpans": [
    {
      "start": "2015-05-07T12:02:53+00:00",
      "end": "2015-05-07T14:02:53+00:00"
    },
    {
      "start": "2015-05-08T12:02:53+00:00",
      "end": "2015-05-08T14:02:53+00:00"
    },
    {
      "start": "2015-05-09T12:02:53+00:00",
      "end": "2015-05-09T14:02:53+00:00"
    }
  ],
  "startDate": "2015-05-07T12:02:53+00:00",
  "endDate": "2015-05-09T14:02:53+00:00"
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "eventId": "03116768-1abc-405a-93d7-ba6ede52fe78",
  "url": "https://io-test.uitdatabank.be/event/03116768-1abc-405a-93d7-ba6ede52fe09"
}
```
