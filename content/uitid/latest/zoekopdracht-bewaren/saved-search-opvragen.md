---
---

# Saved search opvragen

{server}/savedSearch/{savedSearchId}

* Methode: GET
* Authenticatie: UserAccessToken.

## Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest

## Voorbeeld

Request

```GET {server}/savedSearch/2```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<savedSearch>
<frequency>ASAP</frequency>
<id>2</id>
<name>Test+alert+1</name>
<<uitIdUser>
<rdf:id><4d177d4e-6810-404c-afe0-e7dba1765f7c</rdf:id>
<foaf:nick>nele</foaf:nick> 
</uitIdUser>
<query>q%3Dzwembad</query>
</savedSearch>
</response> {%endhighlight %}