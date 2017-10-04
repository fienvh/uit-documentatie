---
---

# How to perform authenticated requests

## Get a valid API key

Go to [projectaanvraag.uitdatabank.be](http://projectaanvraag.uitdatabank.be) and apply for your personal API key

## Get a valid JSON WebToken

### Connect your UiTiD
```
http://<udb-jwt-provider>/culturefeed/oauth/connect?destination=<your url>
```

Example request:

1/ `http://jwtprovider-test.uitdatabank.be/culturefeed/oauth/connect?destination=oob`

2/ Login with your UiTiD credentials

Example response:

```
https://jwtprovider-test.uitdatabank.be/culturefeed/oauth/oob?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UEYfXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJz
```

Collect the value behind `?jwt=<your jwt>

Note: the experation of a JWT is set to 12 hours

## Add JWT and API Key as headers with every authenticated request

You can add your API key and JWT to a request:

* API Key: in a custom `X-Api-Key` header
* JWT: as authorization header

For example:

```
PUT /places/ed388184-f18f-47b6-8e8f-1056a48a4b4b/name/nl HTTP/1.1
Host: udb-silex-test.uitdatabank.be
Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UEYfXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJz
X-Api-Key: c7c95c31-93b0-4a3b-8758-770e76d5ed46
```




