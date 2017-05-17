---
---

# Frequentie van een saved search aanpassen

```{server}/savedSearch/{savedSearchId}/frequency

met savedSearchId de ID van de saved search

* Methode: POST
* Authenticatie: UserAccessToken

## Parameters

| Naam | Type  | Omschrijving
| frequency | String | Mogelijke waarden: ASAP, DAILY, WEEKLY, NEVER (verplicht)

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * MISSING\_REQUIRED\_FIELDS wanneer frequency ontbreekt
  * INVALID\_PARAMETERS: ongeldige waarde voor frequency, wanneer een gebruiker een alert wil aanpassen dat hij zelf niet heeft ingesteld of wanneer het alert niet wordt gevonden

## Voorbeeld

Request

```
GET {server}/uitalert/frequency/2
frequency=ASAP
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">
<savedSearch>
<frequency>ASAP</frequency>
<id>2</id>
<name>Test+alert+1</name>  
<uitIdUser><rdf:id>4d177d4e-6810-404c-afe0-e7dba1765f7c</rdf:id><foaf:nick>nele</foaf:nick></uitIdUser>
<query>q%3Dzwembad</query>
</savedSearch>
</response> {%endhighlight %}

Voorbeeld response bij fout

HTTP Status 400

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>INVALID\_PARAMETERS</code>
<message>value TEST is an invalid value for the parameter 'frequency'</message>
</response> {%endhighlight %}
