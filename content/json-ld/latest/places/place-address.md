---
---

# Address

Update the address information of a place in a given language.

Address is required, a place can only have one address.


## Resource URI

```
/places/{placeId}/address/{lang}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| lang	| string | 2-character language reference | nl |

## HTTP PUT

| Property	| Type | Description | Example |
|--|--|--|--|
| addressCountry | string | 2-character country code | BE |
| addressLocality | string | The locality name of the location | Leuven |
| postalCode | string | postalcode of the location | 3000 |
| streetAddress | string | The street name and house number information of the location | Bondgenotenlaan 101 |


**Example body**

```
{
    "addressCountry": "BE",
    "addressLocality": "Scherpenheuvel-Zichem",
    "postalCode": "3271",
    "streetAddress": "Hoornblaas 107"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported