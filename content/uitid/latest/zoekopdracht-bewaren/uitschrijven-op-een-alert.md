---
---

# Uitschrijven op een alert

```
{server}/savedSearch/{savedSearchId}/unsubscribe
```

met savedSearchId de ID van de alert is

* Methode: POST
* Authenticatie:UserAccessToken of Consumer request

## Parameters

| Naam | Type | Omschrijving
 userId |   String |   uid van de gebruiker (verplicht)

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * USER\_NOT\_FOUND: userId komt niet overeen met een gekende gebruiker
  * INVALID\_PARAMETERS: wanner de gebruiker een alert probeert de verwijderen die hij niet zelf heeft ingesteld of wanneer de gegeven alert niet bestaat

## Voorbeeld

Request

```
POST {server}/savedSearch/unsubscribe/1
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<message>successfully unsubscribed from UitAlert</message>
<savedSearch>
<frequency>DAILY</frequency>
<id>1</id>
<name>Test+alert+1</name>
<<uitIdUser>
<rdf:id><4d177d4e-6810-404c-afe0-e7dba1765f7c</rdf:id>
<foaf:nick>nele</foaf:nick>
</uitIdUser>

<query>q%3Dzwembad</query>
</savedSearch>
</response> {%endhighlight %}

Voorbeeld response bij fout

HTTP Status 400

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>INVALID\_PARAMETERS</code>
<message>UitAlert with id 1 could not be found</message>
</response>
{%endhighlight %}
