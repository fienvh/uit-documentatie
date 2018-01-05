---
---

# Update name

An object containing the name in the given language. UiTdatabanks default language is `nl`

## HTTP request

```
PUT /events/{eventId}/name/{lang}
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
| lang	| string | 2-character language reference | nl |

## Request body

| Property	| Type | Description |
|--|--|--|
|name		| string | The name for your event |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**
The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/name/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"name": "Name example"
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
