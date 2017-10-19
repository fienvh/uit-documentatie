---
---

# Create organizer

## Resource URI

```
/organizers/
```

## HTTP GET

List all organizers
> no authentication necessary

| Parameter	| Type | Description | Example |
| -- |--|--|--|
| name | string | Limit the list to organizers with a specific name. Can be used for fuzzy search. |?name=Bozar*|
| website | string | Limit the list to places with a specific unique url. |?website=https://www.cultuurnet.be|
| limit | string | Limit the results to a specific number. Used for paged results |?limit=10|
| start | string | start search results from a specific number. Used for paged results |?start=11|
| embed | true | Embed JSON-LD body in search results, default = false |?embed=true|


## HTTP POST

To create a new organizer the object-body must contain the following properties:
- website
- name


The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See specific PUT requests for definitions of each property

**Example body**

```
{
  "website": "http://www.stuk.be/",
  "name": "STUK",
  "address": {
    "addressCountry": "BE",
    "addressLocality": "Leuven",
    "postalCode": 3000,
    "streetAddress": "Sluisstraat 79"
  },
  "contact": [
    {
      "type": "url",
      "value": "https://www.facebook.com/STUKLeuven"
    }
  ]
}
```

## HTTP PUT

Not supported

## HTTP DELETE

Not supported
