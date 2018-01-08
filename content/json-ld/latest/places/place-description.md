---
---

# Update description

Add a description in the given language for an offer.
Description is not limited in size, but it is recommended to use the first 200 characters of the description for promotional copy as these characters are visible in list-view of results.

Keep in mind:

-  Description should be UTF-8 encoded
-  Linebreaks are encoded as `\n`

## HTTP request

```
PUT /places/{placeId}/description/{lang}
```

**HTTP DELETE**

Not supported: to remove description, perform PUT request with blank description.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| lang	| string | 2-character language reference | nl |

## Request body

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your place |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/description/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "description": "This is a description.\n This is a new line."
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
