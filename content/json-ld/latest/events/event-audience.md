---
---

# Update Target audience

An object containing the audience information to set for the event. By default every event has audienceType 'everyone'.

Events with audienceType 'members' and 'education' are excluded from search results by default filters.

## HTTP request

```
PUT /events/{eventId}/audience
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
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| audienceType | string | Possible values: `everyone`, `members`, `education` | everyone |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**
The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/audience
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "audienceType": "everyone"
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
