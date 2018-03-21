---
---

# Organizer

## Create an organizer with new id

**URI & method**

```
POST /imports/organizers/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update an organizer with existing id

**URI & method**

```
PUT /imports/organizers/{cdbid}
```

If successful, this returns a 200 response code with the used id in response body

**Example response**

```
{
    "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Example request - full organizer

```
curl -X "POST" "http://io-test.uitdatabank.be/imports/organizers/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjExNzE2LCJleHAiOjE1MjEyMTUzMTYsIm5iZiI6MTUyMTIxMTcxNn0.Ng2RLO-n-4cmvvbOPPNiHxT3vGlHAPgUlARpVnaeyuJ2pyH45sOVmrtxRivbDPpgIWhozulwmcjvNeZ-fH1VKGGUJsnNmre2fxlinj2AmCgOZ_P83xCWSN-Lcl_7AzMxzminRFOGG7PE7ilAZ3wWlbFUFRkAhDs83BeTOHuHyM9bLVuXmxVZgtPEmapMTEdogxQ5PiR8FPLpOVYCbmQkSddfqs0KA1pVuGYFHm6tRiNd5WRd962_Hg2caw6vxccNyMQ17zYiI7lJDZpoQfp6v-yGjFBNOIroWSA8wOG12h62OyDp3YnRb9v40m35FERzqs70uBc3DMk1q80cG2VnEA' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -d $'{
	"mainLanguage":"nl",
	"name": {
		"nl": "publiq vzw",
		"fr": "publiq vzw"
	},
	"url": "https://www.publiq.be"
}
```

## Properties

Mandatory properties:
1. mainLanguage: must be `nl`
2. name
3. url: must be unique

### mainLanguage

**Example**

```
"mainLanguage":"nl"
```

### name

**Example**

```
 "name": {
    "nl": "organizer name in NL",
    "en": "organizer name in EN"
  }
```

### Url

**Example**

```
"url": "https://www.organizertest.be"
```

Must be a unique url

### address
[TO DO]

### contactPoint
[TO DO]

### label
[TO DO]
