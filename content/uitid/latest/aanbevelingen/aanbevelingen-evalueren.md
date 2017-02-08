---
---

# Aanbevelingen evalueren

Gebruikers kunnen hun aanbevelingen positief of negatief evalueren. Dit wordt meegenomen in het aanbevelingsalgoritme. Een geëvalueerde aanbeveling wordt nooit meer teruggeven aan de Service Consumer. Positief evalueren komt overeen met een activity van het type LIKE.

  {server}/recommendation/evaluate/{ID}

waarbij {ID} de ID is van de aanbeveling die geëvalueerd wordt

* Methode: POST
* Authenticatie:
UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><thead><tr><th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </tr></thead><tbody><tr><td> evaluation</td> <td> int  
 0 = onbehandeld  
 1 = positief  
 2 = negatief  
 3 = neutraal</td> <td> type evaluatie</td> <td> x</td></tr></tbody></table>

## Response

### Succes

HTTP 200 OK met een response body in XML formaat  

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> code</td> <td> Status code string</td></tr></tbody></table>

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> HTTP 400 Bad request</td> <td> Ontbrekende verplichte velden</td> </tr><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd</td></tr></tbody></table>

## Voorbeeld

Request

  POST {server}/recommendation/evaluate/432432  
  evaluation=2

Response  

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)  
  <code>RecommendationEvaluated</code>  
  </response>
