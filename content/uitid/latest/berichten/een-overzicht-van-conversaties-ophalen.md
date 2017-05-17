---
---

# Een overzicht van conversaties ophalen

```
{server}/message/list
```

* Methode: GET
* Authenticatie: UserAccessToken

## Parameters

| Parameter | Type | Beschrijving |
| recipientPage | String | UID van de pagina die het bericht heeft ontvangen.  
Indien deze parameter opgegeven wordt, wordt de resultaatslijst gefilterd met enkel deze berichten. |
| type |   String | Filter op type bericht. |


HTTP status code 200 met een XML met de velden:

* code: SUCCESS
* messages: lijst van berichten


| id |   Integer |   ID van het bericht |  
| sender |   UitID gebruiker |   verzender van het bericht |  
| creationDate |   W3CDate |   verzenddatum |  
| lastReply |   W3Cdate |   datum van laatste reply op dit bericht.  |  
| status |   String |   NEW indien bericht of reply op dit bericht ongelezen  
READ indien bericht gelezen |  
| senderPageId |   String |   UID van de sender page |  
| senderPageName |   String |   Naam van de sender page |  
| recipientPageId |   String |   UID van de recipient page |  
| recipientPageName |   String |   Naam van de recipient page |  
| type |   String |   Type van het bericht |


| id |   UID van de UiTID gebruiker |  
| nick |   nick van de UiTID gebruiker |


HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * MISSING\_REQUIRED\_FIELDS  
  * RECIPIENT\_PAGE\_UNKNOWN  
  * SENDER\_PAGE\_UNKNOWN

## Voorbeeld

Request

```
GET {server}/message/list
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>SUCCESS</code>
<messages>
<message>
<id>2</id>
<sender>
<rdf:id>657630d7-0903-4d9a-8e3e-e0b0236e7e21</rdf:id>
<foaf:nick>1l4nsor90o3741ql</foaf:nick>
</sender>
<creationDate>2013-02-28T17:49:41.293+01:00</creationDate>
<lastReply>2013-02-28T17:49:41.349+01:00</lastReply>
<status>NEW</status>
</message>
<message>
<id>1</id>
<sender>
<rdf:id>657630d7-0903-4d9a-8e3e-e0b0236e7e21</rdf:id>
<foaf:nick>1l4nsor90o3741ql</foaf:nick>
</sender>
<creationDate>2013-02-28T17:49:41.024+01:00</creationDate>
<lastReply>2013-02-28T17:49:41.331+01:00</lastReply>
<status>NEW</status>
</message>
</messages>
</response>
{% endhighlight %}
