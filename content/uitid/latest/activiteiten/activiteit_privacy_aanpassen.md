---
---

# Activiteit privacy aanpassen

Privacy van een bepaalde activity aanpassen

* Method: `POST`
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert.

```
{server}/activity/{ID}
```

waarbij {ID} de ID van de Activity is.

## Parameters

private | `true` of `false` |	Privacy status van deze activiteit |	Verplicht

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat
* code: status code string
* activityID: ID van de aangemaakte activiteit

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie

* HTTP 400 Bad request: ontbrekende parameters
* HTTP 403 Forbidden: er is geen gebruiker geauthenticeerd of de geauthenticeerde gebruiker heeft geen rechten om een activiteit voor de opgegeven userId aan te passen

## Voorbeeld

Request

```
POST http://test.uidid.be/culturefeed/rest/activity
private=true
&private=false
```

Response

{% highlight xml%}
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<code>ActivityUpdatedResult</code>
	<activityId>b0f73151-2013-47ba-9612-1a5dae0c988b</activityId>
	</response>
{% endhighlight %}
