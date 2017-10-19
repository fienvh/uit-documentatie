---
---
# Perform requests using POSTMAN

## Authorization header

Under 'Headers' set:

JWT:
- Key: `Authorization`
- Value: `Bearer <jwt>`

API Key:
- Key: `X-Api-Key`
- Value: `<your api key>`

![Postman authorization](/img/postman-authorization.png "Postman authorization")

## Define host & path

Host:
- Test: https://test-io.uitdatabank.be
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
