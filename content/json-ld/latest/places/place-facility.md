---
---

# Update facilities

One or more of the enabled/visible facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id

**Note**: special permission is needed to update facilities in UDB3. Contact an administrator for further information.

**List of facilities for places**

| Facility ID | Facility name                         |
| ----------- | ------------------------------------- |
| 3.13.1.0.0 | Voorzieningen voor assistentiehonden |
| 3.23.3.0.0 | Rolstoel ter beschikking |
| 3.25.0.0.0 | Contactpunt voor personen met handicap |
| 3.26.0.0.0 | Parkeerplaats |

## HTTP request

```
PUT /places/{placeId}/facilities/
```

**HTTP DELETE**

Not supported: to remove specific facilities, perform PUT request with empty array

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| facilities | array | one or more facilityIds | 3.23.1.0.0 |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/facilities/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"facilities": [
   "3.23.2.0.0",
   "3.13.3.0.0",
   "3.17.3.0.0"
  ]
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
