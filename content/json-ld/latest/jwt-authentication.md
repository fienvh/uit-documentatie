---
---

# Authentication

## How to perform authenticated requests using a JWT

### Connect your UiTiD
```
http://<udb-jwt-provider>/culturefeed/oauth/connect?destination=<your url>
```

Example request:

1/ http://jwtprovider-test.uitdatabank.be/culturefeed/oauth/connect?destination=oob

2/ Login with your UiTiD credentials

Example response:

```
https://jwtprovider-test.uitdatabank.be/culturefeed/oauth/oob?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UEYfXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJzEhQ
```

### Add JWT as authorization header with every request

```
PUT /places/ed388184-f18f-47b6-8e8f-1056a48a4b4b/name/nl HTTP/1.1
Host: udb-silex-test.uitdatabank.be
Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1NzIzODE0LCJleHAiOjE1MDU3NjcwMTQsIm5iZiI6MTUwNTcyMzgxNH0.XDYo6EWV1mEmtQLNpixkfjhOwcehPGgjgQmxIYmO-tOAN1l8rYJ2oQCZKGQ1TMWtls4EFU93w5fGIR4QJ0Kv2jBIdpcoC6Uv5AF8x0uS3-zkxorbKq2NcpknanavUwVPll8V7E7SfP3EK6J3bS6dFcC5aksw1xlWakAk--Rra2ZGERRB0ea0OTzQt0-W_ca6zy7eRLEKV-pd_YH1HUbnGOZyEJSIaisqteUwcMXqryM-fIfM8w9cCNAM55Wr2Y8u1xhHtGjX_69p1o8AKPdeiEwmmT6OnzS_0rZkO6pNdXpkCTRgC3hq4aNkUp0GYSgcfCAVWeYlWdC6y-BqoPF4Sw
```

## Perform requests using POSTMAN

### Authorization header

Under 'Headers' set:
- Key: `Authorization`
- Value: `Bearer <jwt>`


### Define host & path

Host:
- Test: https://udb-silex-test.uitdatabank.be
- Production: https://io.uitdatabank.be

Path:
See documentation

### HTTP Method
Use the correct HTTP method for the chosen path

### Body
For some requests a well formed json-ld body is required. See documentation


