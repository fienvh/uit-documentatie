---
---

# Update address

Update the address information of a place.

Address is not required, an organizer can only have one address.


## HTTP request

```
PUT /organizers/{organizerId}/address
```

**HTTP DELETE**

Not supported: once an address is added, it is only possible to update the address.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |


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
PUT  https://io-test.uitdatabank.be/organizers/{organizerId}/address
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "addressCountry": "BE",
  "addressLocality": "Leuven",
  "postalCode": "3000",
  "streetAddress": "Sluisstraat 79"
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
