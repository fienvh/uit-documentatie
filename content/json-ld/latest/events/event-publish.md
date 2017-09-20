---
---

# Publish an event

By default every offer is created with `"workflowstatus":"DRAFT"`

Offers with workflowstatus "DRAFT" are by default excluded from search results

A Publish command is an authenticated request that requires specific permission: it can only be executed by the creator of the offer!

## Resource URI

```
/events/{eventId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |

## HTTP PATCH

```
Header: Content-Type
Value: application/ld+json;domain-model=Publish
```

| Property	| Type | Description | Example |
|--|--|--|--|
| publicationDate | date-time | Specify the date and time when the offer can be published and return in search results | 2017-02-01T12:00:00+00:00 |


**Example body**
```
{
  "publicationDate": "2017-02-01T12:00:00+00:00"
}
```


**Example request**
```
curl -X PATCH --header 'Content-Type: application/ld+json;domain-model=Publish' --header 'Accept: application/json' --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1OTAyNjY5LCJleHAiOjE1MDU5NDU4NjksIm5iZiI6MTUwNTkwMjY2OX0.cmLqAoVXzDJ-LAvT0TSDjmjUxTbqQrEOdSWq6nq7BkhNNMxwVNKZvRCuntM2v6cOm9MxP8SYg1GnsP6WSdwPXOSG_qtfbJZCko8Ai-Uf8eougDoHvY2Q4QqVqZYXMU9Sg7WvxO7VM4jQSyPCzUAs3ju4iSDhAvNQOX6y-_7FAvO7HzRvo7I90RJMVYJbDO2Hy1Cwt0IWZkkv1fo7Nsk5APgIBo_f0fKTkPlH2g5Tf8na3ei7pShhkt0momFrzQP8gllctRdwGaAzXpilc0ezj8jQ-fvOM7pwad1dXvJTiIWW-49WO' -d '{ \ 
   "publicationDate": "2017-02-01T12:00:00+00:00" \ 
 }' 'https://udb-silex-test.uitdatabank.be/event/a61174e4-d4bf-46a6-8269-43b720089a18'
```