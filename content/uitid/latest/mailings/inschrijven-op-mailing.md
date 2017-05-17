---
---

# Inschrijven op Mailing

{server}/mailing/v2/{ID}/subscribe waarbij {ID} de ID van de Mailing is

* Method: POST
* Authenticatie:  UserAccessToken van de gebruiker die de actie uitvoert.

## Parameters

 Parameter Beschrijving Verplicht</th>
</tr><tr><td> userIdUiD van de UiTiD user waarnaar de testmail gestuurd moet worden**x**

## Response

### Succes

 HTTP 200 OK met een response body in XML formaat  
 velden

  codeStatus code string

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

 HTTP 403 ForbiddenEr werd geen of geen geldig UserAccessToken meegestuurd.HTTP 401 UnauthorizedDe gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)

## Voorbeeld

Request

  POST {server}/mailing/3/subscribe

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response>  
  <code>MailingSubscribed</code>  
  </response>
