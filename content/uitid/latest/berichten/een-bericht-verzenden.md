---
---

# Een bericht verzenden

```
{server}/message
```

* Methode: POST
* Authenticatie: UserAccessToken

**Parameters**

| Parameter | Type | Beschrijving
| recipient | String | UID van de ontvanger(s) van het bericht. Kan herhaald worden.   
 Mag niet in combinatie met pageRecipient of replyTo gebruikt worden. (Verplicht) |  
| recipientPage | String | UID van de pagina die het bericht moet ontvangen (alle admins zullen het bericht zien). Kan niet herhaald worden. Mag niet in combinatie met recipient of replyTo gebruikt worden. (Verplicht)
| replyTo | Integer | ID van het bericht waarop geantwoord wordt (Verplicht) |
| role | List<PageRole> | Leden van de pagina waarnaar het bericht wordt verstuurd. Mogelijke waarden zijn: ADMIN, MEMBER en/of FOLLOWER (Verplicht) |
| senderPage | String |   UID van de pagina van waaruit het bericht verstuurd wordt |
| subject | String |   onderwerp van het bericht. |
| body | String |   inhoud van het bericht. |
| type | String |   type van het bericht |


HTTP status code 200 met een XML met de velden:

* code: SUCCESS
* id: ID van het bericht

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 Bad Request
  * MISSING\_REQUIRED\_FIELDS
  * RECIPIENT\_PAGE\_UNKNOWN
  * SENDER\_PAGE\_UNKNOWN
  * NO\_PERMISSION\_RECIPIENT\_PAGE
  * NO\_PERMISSION\_SENDER\_PAGE
  * NOT\_A\_RECIPIENT
  * PARENT\_NOT\_ALLOWED

## Voorbeeld

Request

```
POST {server}/message
recipientPage=1322-321321-312321
subject=Test
body=Test
```

Response

{% highlight xml %}
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>SUCCESS</code>
<id>6232</id>
</response>
{% endhighlight %}
