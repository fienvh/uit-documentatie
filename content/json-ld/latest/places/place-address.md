---
---

# Update address

Update the address information of a place in a given language.

Address is required, a place can only have one address.


## HTTP request

```
PUT /places/{placeId}/address/{lang}
```
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

| Property	| Type | Description | Example |
|--|--|--|--|
| addressCountry | string | 2-character country code | BE |
| addressLocality | string | The locality name of the location | Leuven |
| postalCode | string | postalcode of the location | 3000 |
| streetAddress | string | The street name and house number information of the location | Bondgenotenlaan 101 |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/address/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
    "addressCountry": "BE",
    "addressLocality": "Scherpenheuvel-Zichem",
    "postalCode": "3271",
    "streetAddress": "Hoornblaas 107"
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
