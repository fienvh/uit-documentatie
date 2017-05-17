---
---

# Aanbevelingen evalueren

Gebruikers kunnen hun aanbevelingen positief of negatief evalueren. Dit wordt meegenomen in het aanbevelingsalgoritme. Een geëvalueerde aanbeveling wordt nooit meer teruggeven aan de Service Consumer. Positief evalueren komt overeen met een activity van het type LIKE.

```
{server}/recommendation/evaluate/{ID}
```

waarbij {ID} de ID is van de aanbeveling die geëvalueerd wordt

* Methode: POST
* Authenticatie:
UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| Parameter | Type  | Beschrijving
| evaluation | int  |  evaluatie (verplicht) (0 = onbehandeld, 1 = positief, 2 = negatief, 3 = neutraaltype )

## Response

### Succes

HTTP 200 OK met een response body in XML formaat  

* code: Status code string

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

HTTP 400 Bad request: ontbrekende verplichte velden
HTTP 403 Forbidden: er werd geen of geen geldig UserAccessToken meegestuurd

## Voorbeeld

Request

```
POST {server}/recommendation/evaluate/432432
evaluation=2
```

Response  

{% highlight xml %}
  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">  
  <code>RecommendationEvaluated</code>  
  </response>
{% endhighlight %}
