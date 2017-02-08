---
---

# Uitschrijven op Mailing

  {server}/mailing/v2/{ID}/unsubscribe waarbij {ID} de ID van de Mailing is

Methode: POST
Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert.

## Parameters

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><th scope="col"> Parameter</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </tr><tr><td> userId</td> <td> UiD van de UiTiD user waarnaar de testmail gestuurd moet worden</td> <td> **x**</td></tr></tbody></table>

## Response

### Succes

HTTP 200 OK met een response body in XML formaat  

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> code</td> <td> Status code string</td></tr></tbody></table>_Bij fouten_  
HTTP status code, eventueel aangevuld met een XML body met extra informatie.

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>

## Voorbeeld

Request

  POST {server}/mailing/3/unsubscribe

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response>  
  <code>MailingUnsubscribed</code>  
  </response>
