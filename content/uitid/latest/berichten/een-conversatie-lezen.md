---
---

# Een conversatie lezen

```
{server}/message/{id}
```

* Methode: GET
* Authenticatie: UserAccessToken

## Parameters

Geen

Succes

HTTP status code 200 met een XML met de velden:

code |   SUCCESS |  
thread |   Het bericht en de replies daarop |

| id |   Integer |   ID van het bericht |  
| sender |   UitID gebruiker |   verzender van het bericht |  
| creationDate |   W3CDate |   verzenddatum |  
| lastReply |   W3Cdate |   datum van laatste reply op dit bericht.  |  
| status |   String |   NEW indien bericht of reply op dit bericht ongelezen  
 READ indien bericht gelezen |  
| senderPageId |   String |   UID van de sender page |  
| senderPageName |   String |   Naam van de sender page |  
| recipientPageId |   String |   UID van de recipient page |  
| recipientPageName |   String |   Naam van de recipient page |  
| children |   List<Message> |   Lijst van antwoorden op dit bericht |  
| recipients |   List<UidIDGebruiker> |   Lijst van UitID gebruikers |  
| type |   String |   Type van het bericht |


| id |   UID van de UiTID gebruiker |  
| nick |   nick van de UiTID gebruiker |


HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden

## Voorbeeld

Request

```
GET {server}/message/32233
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>SUCCESS</code>
<thread>
<id>32233</id>
<sender>
<rdf:id>657630d7-0903-4d9a-8e3e-e0b0236e7e21</rdf:id>
<foaf:nick>1l4nsor90o3741ql</foaf:nick>
</sender>
<subject>subject1</subject> body1 <creationDate>2013-02-28T17:49:41.024+01:00</creationDate>
<children>
<message>
<id>4</id>
<sender>
<rdf:id>657630d7-0903-4d9a-8e3e-e0b0236e7e21</rdf:id>
<foaf:nick>1l4nsor90o3741ql</foaf:nick>
</sender>
<subject>reply2</subject> replybody2 <creationDate>2013-02-28T17:49:41.331+01:00</creationDate>
<status>READ</status>
</message>
<message>
<id>3</id>
<sender>
<rdf:id>571a026a-43ca-4bd0-a34c-6dbc73b51de4</rdf:id>
<foaf:nick>lkprh7g5uq53163i</foaf:nick>
</sender>
<subject>reply1</subject> replybody1 <creationDate>2013-02-28T17:49:41.312+01:00</creationDate>
<status>NEW</status>
</message>
</children>
<recipients>
<recipient>
<rdf:id>a78d3d77-68e3-48ec-b6fb-1b4595d52e49</rdf:id>
<foaf:nick>anwouters</foaf:nick>
<foaf:depiction>depiction\_url</foaf:depiction>
</recipient>
<recipient>
<rdf:id>06c9ccac-5532-4903-8b6e-960afc69387f</rdf:id>
<foaf:nick>joeri</foaf:nick>
</recipient>
</recipients>
<status>READ</status>
</thread>
</response>
{% endhighlight %}
