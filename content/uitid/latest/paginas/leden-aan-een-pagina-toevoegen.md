---
---

# Leden aan een pagina toevoegen

> {server}/page/{uid}/member/add

* Methode: POST
* Authenticatie: UserAccessToken.

## Parameters

Parameter | Type | Beschrijving
userId | String | uid van CultureFeed gebruikers. Verplicht
relation | String | relatie van het lidmaatschap
activityPrivate | Boolean | zichtbaarheid van activity voor lidmaatschap, default: true


## Response


HTTP 200 OK met een response body in XML formaat.

Velden:

* code: status code string: ACTION\_SUCCEEDED
* message: detail bij foutcode

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden
ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED


## Voorbeeld

Request

```
POST {server}/page/c5f2384d-4b23-4348-93c2-0593ab553673/member/add

userId=17748f38-ea59-4b73-99cd-535cde1b3638&relation=Voorzitter&activityPrivate=false
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#"><code>ACTION\_SUCCEEDED</code><message>Lidmaatschap werd toegevoegd</message></response> {%endhighlight %}
