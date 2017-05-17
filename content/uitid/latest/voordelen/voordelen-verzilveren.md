---
---

# Voordelen verzilveren

```
{server}/userpoints/user/{uid}/cashInPromotion
```

met uid de UiTiD ID van de User

* Methode: POST
* Authenticatie: UserAccessToken

Naam | Type | Omschrijving |
promotionId | List<Long> | Identifier van de promotie die verzilverd wordt (Verplicht)  
promotionCount<promotionId> | Integer | Aantal keer dat promotie met id promotionId verzilverd wordt (Verplicht)

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie. <

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * OBJECT\_NOT\_FOUND: wanneer promotion niet gekend is
  * CASHIN\_PROMOTION\_NOT\_ALLOWED met reason NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT, NOT\_POSSIBLE\_VOLUME\_CONSTRAINT, NOT\_POSSIBLE\_DATE\_CONSTRAINT, NOT\_POSSIBLE\_USER\_CONSTRAINT, NOT\_POSSIBLE\_POINTS\_CONSTRAINT

## Voorbeeld

Request

```
POST {server}/userpoints/user/6a5cccd0-dfef-467f-af68-384bfe60688b/cashInPromotion
promotionId=2  
promotionCount2=1  
promotionId=4  
promotionCount4=2
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<promotion>
<cashedIn>true</cashedIn>
<id>2</id>
<points>4.50</points>
<title>Sleutelhanger</title>
<unitsTaken>4</unitsTaken>
</promotion>
<promotion>
<cashedIn>true</cashedIn>
<id>4</id>
<points>1.50</points>
<title>Sticker</title>
<unitsTaken>12</unitsTaken>
</promotion>
<promotion>
<cashedIn>true</cashedIn>
<id>4</id>
<points>1.50</points>
<title>Sticker</title>
<unitsTaken>13</unitsTaken>
</promotion>
</response>  **Voorbeeld response bij fout**  HTTP Status 400 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<code>CASHIN\_PROMOTION\_NOT\_ALLOWED</code>
<message>ActivityPointsPromotion [2] could not be cashed in by user [0cffb28b-4ec6-4857-bd37-75387aa02e4a] - Reason: NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT</message>
</response> {%endhighlight %}
