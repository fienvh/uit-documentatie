---
---

# Inschrijven op een saved search

``` {server}/savedSearch/subscribe ```

* Methode: POST
* Authenticatie: UserAccessToken of Consumer request

Naam |   Type |   Omshrijving
userId |   String |   uid van de gebruiker (verplicht)  
name |   String |   naam van de alert (verplicht)  
query |   String |   zoekopdracht (url encoded) (verplicht)  
frequency |   String |   mogelijke waarden: ASAP, DAILY, WEEKLY, NEVER (verplicht)

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * USER\_NOT\_FOUND: userId komt niet overeen met een gekende gebruiker
  * MISSING\_REQUIRED\_FIELDS: wanneer een verplicht veld niet beschikbaar is
  * INVALID\_PARAMETERS: ongeldige waarde voor frequency

## Voorbeeld

Request

```
POST {server}/savedSearch/subscribe
userId=6a5cccd0-dfef-467f-af68-384bfe60688b query=q%3D\*%26fq%3Dtype%3Aevent%26group%3Dtrue name=Alles frequency=ASAP
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<savedSearch>
<frequency>ASAP</frequency>
<id>4</id>
<name>Alles</name>
<<uitIdUser>
<rdf:id><4d177d4e-6810-404c-afe0-e7dba1765f7c</rdf:id>
<foaf:nick>nele</foaf:nick>  
</uitIdUser>

<query>q=\*&past=true&fq=type:event&group=true</query>
</savedSearch>
</response> {%endhighlight %}

Voorbeeld response bij fout

HTTP Status 400

 {% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>MISSING\_REQUIRED\_FIELDS</code>
<message>'name' is a required parameter</message>
</response>
{% endhighlight %}
