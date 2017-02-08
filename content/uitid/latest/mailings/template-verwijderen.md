---
---

Template verwijderen

  {server}/mailing/v2/template/{ID}/delete waarbij {ID} de ID van de template is

Methode:  POST
Authenticatie:  UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Response

### succes

HTTP 200 OK met een response body in XML formaat  

* code: Status code string

### Fout  
HTTP status code, eventueel aangevuld met een XML body met extra informatie.

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>

## Voorbeeld

Request

  POST {server}/mailing/v2/template/3/delete
