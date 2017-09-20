---
---
# Perform requests using POSTMAN

## Authorization header

Under 'Headers' set:
- Key: `Authorization`
- Value: `Bearer <jwt>`

![Postman authorization](/img/postman-authorization-header.png "Postman authorization")

## Define host & path

Host:
- Test: https://udb-silex-test.uitdatabank.be
- Production: https://io.uitdatabank.be

Path:
See documentation

![Postman url](/img/postman-method-url.png "Postman url")

## HTTP Method
Use the correct HTTP method for the chosen path

![Postman method](/img/postman-method-url.png "Postman method")

## Body
For some requests a well formed json-ld body is required (See documentation for specs).
Use 'raw'

![Postman body](/img/postman-body.png "Postman body")

