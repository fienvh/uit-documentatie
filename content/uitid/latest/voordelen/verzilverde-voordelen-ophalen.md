---
---

# Verzilverde voordelen ophalen

```
{server}/userpoints/user/{uid}/cashedPointsPromotions
```

waarbij {uid} de UiTiD ID van de User is  

* Methode: GET
* Authenticatie: UserAccessToken


## Parameters


Naam | Type | Omschrijving
promotionTitle | String | (deel van) de titel van het verzilverde voordeel dat gezocht wordt.</font>
cashingDateBegin | W3CDate | Verzilverperiode vanaf
cashingDateEnd | W3CDate | Verzilverperiode tot
sort | String | Sorteerveld. Mogelijke waarden: CASHINGDATE, TITLE. Standaardwaarde: CASHINGDATE
order | String | Sortering. Mogelijke waarden: ASC, DESC. Standaard waarde: DESC
max | Integer | Maximum aantal resultaten. Default: 20
start | Integer | Resultaten offset. Default: 0

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 Bad Request

## Voorbeeld

Request

```
GET {server}/userpoints/user/3f1b8304-d552-41cf-adca-f0a41f3a1249/cashedPointsPromotions?cashingDateBegin=2013-07-01T02:00:00Z
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<promotions>
<promotion>
<cashedIn>true</cashedIn>
<cashingDate>2013-08-20T10:23:47.797+02:00</cashingDate>
<id>1</id>
<inSpotlight>false</inSpotlight>
<points>1.5</points>
<title>Sleutelhanger</title>
<unitsTaken>2</unitsTaken>
</promotion>
</promotions>
<total>1</total>
</response> {%endhighlight %}
