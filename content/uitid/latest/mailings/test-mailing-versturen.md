---
---

# Test mailing versturen

     {server}/mailing/v2/{ID}/test waarbij {ID} de ID van de mailing is

Method: POST
Authenticatie:  UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft


## Parameters

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><thead><tr><th scope="col"> Parameter</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </tr></thead><tbody><tr><td> userId</td> <td> UiD van de UiTiD user waarnaar de testmail gestuurd moet worden</td> <td> x</td></tr></tbody></table>

## Response

### _Bij succes_  

HTTP 200 OK met een response body in XML formaat

* code: Status code string

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>


## Voorbeeld

Request

  POST {server}/mailing/3/test

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response>  
  <code>MailingTestSent</code>  
  </response>
