---
---

# Tijdslijn punten

```
{server}/userpoints/user/{uid}/timeline
```

met uid de UiTiD ID van de User is

* Methode: GET
* Authenticatie: UserAccessToken.

## Parameters

Naam | Type | Omschrijving
dateFrom | W3CDate | Startdatum van de tijdslijn
dateTo | W3CDate | Einddatum van de tijdslijn

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie. <

* HTTP 403 Forbidden
* HTTP 400 BadRequest: PARSE\_INVALID\_DATE

## Voorbeeld

Request

```
POST {server}/userpoints/user/8431fa41-11a3-4374-9716-9635e2a40971/timeline
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<activities>
<activity>
<benefitUserId>8431fa41-11a3-4374-9716-9635e2a40971</benefitUserId>
<type>3</type>
<contentType>activity</contentType>
<createdVia>uitpas.be</createdVia>
<creationDate>2013-06-17T08:42Z</creationDate>
<id>dfa50698-894a-4fc3-9396-a24327a641f6</id>
<nodeID>aa7a3eeb-d220-4e94-90c7-8706ef13873a</nodeID>
<nodeTitle>Circus</nodeTitle>
<parentActivity>aa7a3eeb-d220-4e94-90c7-8706ef13873a</parentActivity>
<points>0.000</points>
<private>false</private>
<pyramidPoints>0.003</pyramidPoints>
<userId>9fcf9743-de6a-4d5e-94d0-a51100ff6033</userId>
</activity>
<activity>
<type>14</type>
<contentType>event</contentType>
<createdVia>uitpas.be</createdVia>
<creationDate>2013-06-17T06:57Z</creationDate>
<id>aa7a3eeb-d220-4e94-90c7-8706ef13873a</id>
<nodeID>1234567890234567890</nodeID>
<nodeTitle>Circus</nodeTitle>
<points>0.123</points>
<private>false</private>
<pyramidPoints>0.000</pyramidPoints>
<userId>8431fa41-11a3-4374-9716-9635e2a40971</userId>
<value>Heel grappig!</value>
</activity>
</activities>
</response> {%endhighlight %}
