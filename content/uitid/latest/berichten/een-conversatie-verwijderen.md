---
---

# Een conversatie verwijderen

```
{server}/message/{id}/delete
```

* Methode: POST
* Authenticatie: UserAccessToken

## Parameters

Geen

### Succes

HTTP status code 200 met een XML met de velden:
* code: SUCCESS

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden

## Voorbeeld

Request

```
GET {server}/message/32233/delete
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>SUCCESS</code>
</response>
{% endhighlight %}
