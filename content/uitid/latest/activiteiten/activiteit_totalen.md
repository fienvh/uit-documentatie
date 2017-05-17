---
---

# Activiteiten totalen

Hiermee kunnen de totalen van activiteiten van één bepaalde user worden opgevraagd.

```
{server}/activity/totals
```

* Methode: GET
* Authenticatie:
	* ConsumerRequest van de Service Consumer die de totalen opvraagt.
	* UserAccessToken van de gebruiker die de totalen opvraagt in het geval privé activiteiten (parameter private=true). Gebruikers kunnen enkel eigen privé activiteiten meetellen in totalen.

## Parameters

type_contentType |	`List<String>`	| combinatie van type en contentType dat geteld moet worden. Kan herhaald worden. | 	Verplicht
userId |	`String` |	ID van de auteur van de gezochte activiteiten |	Verplicht

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* total: het totaal aantal gevonden activiteiten

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden: Er werd geen of geen geldig ConsumerRequest meegestuurd

## Voorbeeld

Request

```
GET {server}/activity/totals?userId=b726781c-84d5-472f-93dc-74ed982658f8&type_contentType=14_event&type_contentType=14_page
```

Response

{% highlight xml%}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<total type="14_page">1</total>
<total type="14_event">2</total>
</response>
{% endhighlight %}
