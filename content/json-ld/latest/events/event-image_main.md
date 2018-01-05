---
---

# Set main image

The main image is the only image shown in search-result listviews and the image more prominently displayed on offer-details, when the offer has multiple mediaObjects

## HTTP request

```
PUT /events/{cdbid}/images/main
```

## Request headers

| Header        | Value                     |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required  |
| X-Api-Key     | {apiKey}. Required        |
| Content-Type  | application/json          |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |


## Request body

Define the mediaObject you want to set as main image

| Property	| Type | Description |
|--|--|--|
| mediaObjectId | uuid | unique identifier for an image |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/images/main
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mediaObjectId": "73695986-e4cf-4b29-8699-13d7cd77af8c"
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
