---
---

# Aanvraag voor instructies tot validatie

  {server}/page/{uid}/validatedadmin/instructions

* Methode: POST
* Authenticatie: UserAccessToken

## Response

### Succes

HTTP 200 OK met een response body in XML formaat


* code: status code string: ACTION\_SUCCEEDED
* message: detail

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie. <

HTTP 403 Forbidden |   ACCESS\_DENIED, PAGE\_NOT\_FOUND, SCHOOL\_NOT\_FOUND, USER\_ALREADY\_VALIDATED\_ADMIN, USER\_NOT\_MEMBER, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED | </tbody></


## Voorbeeld

Request

  POST {server}/page/c5f2384d-4b23-4348-93c2-0593ab553673/validatedadmin/instructions

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <code>ACTION\_SUCCEEDED</code><div> <message>Request sent to [custersnele@gmail.com](mailto:custersnele@gmail.com)</message><div> </response>
