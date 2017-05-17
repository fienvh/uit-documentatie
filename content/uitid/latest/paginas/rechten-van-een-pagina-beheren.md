---
---

# Rechten van een pagina beheren

```{server}/page/{uid}/permissions```

* Methode: POST
* Authenticatie: UserAccessToken van een gebruiker die beheerder is van de pagina

## Parameters

| Parameter | Type | Beschrijving |
| --- | --- | --- |
| allowFollowers | Boolean | Toelaten om pagina te volgen |
| allowMembers | Boolean | Toelaten om lid te worden van de pagina |
| allowLikes | Boolean | Toelaten om pagina te liken |
| allowComments | Boolean | Toelaten om commentaren op een pagina toe te voegen |
| allowRecommendations | Boolean | Toelaten om pagina aan te bevelen |
| allowMessages |   Boolean | Toelaten om berichten te versturen naar de pagina |
| allowActivities | Boolean | Activiteiten namens de pagina toelaten |

## Response

**HTTP 200 OK** met een response body in XML formaat.

Velden:

* code: Status code string
* uid: De ID van de User

**HTTP 400 Bad request**
Verplichte velden niet meegegeven. Meer uitleg in 'message'.

**HTTP 421 ItemExists**
User met zelfde mbox bestaat al

## Voorbeeld

Request

```
    POST {server}/page/f99828ee-0cc4-4236-9ff7-cc300dd73588/permissions
    allowLikes=false
    &allowComments=true
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<page>
<creationDate>2013-01-29T14:21:56+01:00</creationDate>
<description>Test</description>
<id>1</id>
<name>Test</name>
<permissions>
<allowComments>true</allowComments>
<allowFollowers>true</allowFollowers>
<allowLikes>false</allowLikes>
<allowMembers>false</allowMembers>
<allowMessages>true</allowMessages>
<allowRecommendations>false</allowRecommendations>
</permissions>
<uid>f99828ee-0cc4-4236-9ff7-cc300dd73588</uid>
</page>
{% endhighlight %}
