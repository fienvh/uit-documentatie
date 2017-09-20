---
---

# Address

Update the address information of a place.

Address is not required, an organizer can only have one address.


## Resource URI

```
/organizers/{organizerId}/address
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |


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
  "addressLocality": "Leuven",
  "postalCode": "3000",
  "streetAddress": "Sluisstraat 79"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported