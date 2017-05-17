---
---

# Voordelen ophalen

```
{server}/userpoints/activityPointsPromotions
```

* Methode: GET
* Authenticatie: ConsumerRequest


## Parameters

| Naam | Type | Omschrijving
| minPoints | String | Minimum aantal punten voor het voordeel. Bijv. "3,4"
| maxPoints | String | Maximum aantal punten voor het voordeel. Bijv. "3,4"
| cashingPeriodBegin | W3CDate | Verzilverperiode vanaf
| cashingPeriodEnd | W3CDate | Verzilverperiode tot
| sort | String | Sorteerveld. Mogelijke waarden: CREATION\_DATE, TITLE, CASHING\_PERIOD\_END, POINTS, IN\_SPOTLIGHT. Standaard waarde: CREATION\_DATE
| order | String | Sortering. Mogelijke waarden: ASC, DESC. Standaard waarde: DESC
| max | Integer | Maximum aantal resultaten. Default: 20
| start | Integer | Resultaten offset. Default: 0
| userId | String | UID van de gebruiker waarvoor voordelen gezocht worden. Indien een  userId, zal in het Promotion response object ook rekening gehouden worden met de user contraints. (bv NOT\_POSSIBLE\_POINTS\_CONSTRAINT en  NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT)
| filterOnUserPoints | Boolean | Default: false. Indien true worden enkel de voordelen getoond waarvoor de gebruiker voldoende punten heeft.
| simulatedExtraPoints | Integer | Hiermee kunnen voordelen gezocht worden die de gebruiker kan verzilveren wanneer hij deze punten extra zou sparen.
| unexpired | Boolean | Default: false. Indien true worden enkel voordelen getoond die niet verlopen zijn.
| inSpotlight | Boolean | Indien true worden enkel voordelen getoond die in de kijker staan, indien false enkel voordelen die momenteel niet in de kijker staan.

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 Bad Request

## Voorbeeld

Request

```
GET {server}/userpoints/activityPointsPromotions
userId=3f1b8304-d552-41cf-adca-f0a41f3a1249  
&filterOnUserPoints=true  
&simulatedExtraPoints=5  
&minPoints=4,5
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<promotions>
<promotion>
<cashInState>NOT\_POSSIBLE\_POINTS\_CONSTRAINT</cashInState>
<cashedIn>false</cashedIn>
<cashingPeriodBegin>2013-04-25T00:00:00+02:00</cashingPeriodBegin>
<creationDate>2013-04-25T11:20:36+02:00</creationDate>
<id>2</id>
<maxAvailableUnits>1200</maxAvailableUnits>
<periodConstraint>
<periodType>ABSOLUTE</periodType>
<periodVolume>2</periodVolume>
</periodConstraint>
<points>4.50</points>
<title>4.5 pt + 1200 beschikbaar</title>
<unitsTaken>3</unitsTaken>
</promotion>
</promotions>
<total>1</total>
</response> {%endhighlight %}
