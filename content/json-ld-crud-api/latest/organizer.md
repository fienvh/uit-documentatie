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
