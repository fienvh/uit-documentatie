---
---

# De volgstatus van een node opvragen

```
{server}/node/status
```

* Methode: POST
* Authenticatie:UserAccessToken

## Parameters

Parameter | Type | Beschrijving
userId | String | UID van de gebruiker die de node wil volgen. (Verplicht)
nodeId | String | ID van de node die gevolgd wordt (Verplicht)
contentType | String | ContentType van de node die gevolgd wordt (Verplicht)

HTTP status code 200 met een XML met de velden:

* code | SUCCESS
* nodeId | ID van de node
* userId | UID van gebruiker
* follows | Een boolean (true | false) die aangeeft of de gebruiker de opgegeven node volgt.

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * USER\_NOT\_FOUND
  * FAILED  
  * MISSING\_REQUIRED\_FIELD


## Voorbeeld

Request

```
GET {server}/node/status?nodeId=test1&userId=a78d3d77-68e3-48ec-b6fb-1b4595d52e49&contentType=event
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<code>SUCCESS</code>  **<follows>true</follows>** <nodeId>test1</nodeId>
<userId>a78d3d77-68e3-48ec-b6fb-1b4595d52e49</userId>
</response>
{% endhighlight %}
