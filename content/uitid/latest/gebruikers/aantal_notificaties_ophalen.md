---
---

# Aantal notificaties ophalen

```
{server}/user/{ID}/notifications/totals
```

waarbij {ID} de culturefeed ID van de User is

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die zijn aantal notificaties opvraagt

## Parameters

dateFrom	| W3C date | Startdatum voor notificaties

## Responses

### Bij succes

	HTTP 200 OK met een response body

## Voorbeeld

Request

```
	GET {server}/user/8602ce8c-9aef-4c49-9f09-3dc587871915/notifications/count
	dateFrom=2013-04-05
```

Response

{% highlight xml %}
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response>
	<total type="NEW">3</total>
	<total type="READ">7</total>
	</response>
{% endhighlight %}
