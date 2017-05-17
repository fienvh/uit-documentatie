---
---
# Mailing aanmaken

```{server}/mailing/v2```

* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Parameters

  Parameter Type Beschrijving Verplicht</th>
</tr></thead><tbody><tr><td> consumerKeyString ID van de service consumerxname String naam van de mailingxtemplate int ID van de templatexdescription String omschrijving van de mailx

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat  

* code: Status code string
* mailing: mailing entiteit

### Bij fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden: er werd geen of geen geldig UserAccessToken meegestuurd
* HTTP 401 Unauthorized: de gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)
* HTTP 400 Bad request: in code vind je  MissingFields in geval van een verplicht veld ontbreekt

## Voorbeeld

Request

```
POST {server}/mailing
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">  
<code>MailingCreated</code>  
<mailing>  
<enabled>false</enabled>  
<id>3</id>  
<name>test2</name>  
<serviceConsumerKey>68bd998e84216f530bb5b4f742ffab41</serviceConsumerKey>

<template>

<id>1</id>  
<name>TestTemplate</name>  
<template>template</template>  
<subject>TestMailing</subject>  
<frequency>DAILY</frequency>  
<startDay>0</startDay>  
<startHour>0</startHour>  
<startMinute>0</startMinute>  
<startDayOfWeek>0</startDayOfWeek>  
<recommendationsResultEqualTreshold>100</recommendationsResultEqualTreshold>  
<searchResultEqualTreshold>100</searchResultEqualTreshold>  
<serviceConsumerKey>68bd998e84216f530bb5b4f742ffab41</serviceConsumerKey>  
</template>  
</mailing>  
</response> {%endhighlight %}
