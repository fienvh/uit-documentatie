---
---

# Name

An object containing the name in the given language.
The default language of UiTdatabank is dutch (nl).

## Resource URI

```
/places/{placeId}/name/{lang}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| lang	| string | 2-character language reference | nl |


## HTTP PUT

| Property	| Type | Description |
|--|--|--|
|name		| string | The name for your event |

**Example body**

```
{
"name": "Name example"
}
```

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported
