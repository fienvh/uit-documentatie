---
---

# Een node volgen

```
{server}/node/follow
```

* Methode: POST
* Authenticatie: UserAccessToken

**Parameters**

| userId |   String |   UID van de gebruiker die de node wil volgen (verplicht)
| nodeId |   String |   ID van de node die gevolgd wordt (verplicht)
| contentType |   String |   ContentType van de node die gevolgd wordt (verplicht)

 HTTP status code 200 met een XML met de velden:

* code: SUCCESS
* nodeId:  ID van de node
* userId: UID van gebruiker

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

*  HTTP 403 Forbidden
*  HTTP 400 BadRequest: USER\_NOT\_FOUND, USER\_ALREADY\_FOLLOWS\_NODE, FAILED  , MISSING\_REQUIRED\_FIELD

## Voorbeeld

Request

```
POST {server}/node/follow
userId=a78d3d77-68e3-48ec-b6fb-1b4595d52e49
nodeId=test1
contentType=event
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<code>SUCCESS</code>
<nodeId>test1</nodeId>
<userId>a78d3d77-68e3-48ec-b6fb-1b4595d52e49</userId>
</response> {%endhighlight %}
