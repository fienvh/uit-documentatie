---
---

# Update typicalAgeRange

Add or remove the age range appropriate for the offer.
Don't use decimals

Events with upper boundary smaller or equal to 12 are enriched with the 'Vlieg'-icon and published on https://www.uitmetvlieg.be

## HTTP request

```
PUT /events/{eventId}/typicalAgeRange
```

Update an offer with a given age range

```
DELETE /events/{eventId}/typicalAgeRange
```

Delete any age range from an offer (no body required)

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

Add a specific age range to an offer

| Property	| Type | Description | Example |
|--|--|--|--|
| typicalAgeRange | string | Specify the lower and upper age range applicable for the offer. Do not use decimals | 3-4 |


## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**
The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/typicalAgeRange
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "typicalAgeRange": "1-12"
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
