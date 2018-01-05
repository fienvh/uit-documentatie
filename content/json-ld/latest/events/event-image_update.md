---
---

# Update mediaObject
Update or remove an image from an offer


## HTTP request

```
PUT /events/{eventId}/images/{mediaObjectId}
```

Add an image to an offer

```
DELETE /events/{eventId}/images/{mediaObjectId}
```

Delete an image from an offer

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
| mediaObjectId	| uuid | unique identifier of a mediaObject | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Update description and/or copyright information for a specific image linked to a specific offer

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your image |
| copyrightholder | string | The copyrightholder for the used image |


## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/images/f6ccb2c1-9eb1-4281-a2e3-07c12c06109b
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "description": "string",
  "copyrightHolder": "Dirk Dirkington"
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
