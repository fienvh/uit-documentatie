---
---

# Voordeel ophalen

```
{server}/userpoints/activityPointsPromotion/{promotionId}
```
waarbij {promotionId} de identificatie van de ActivityPointsPromotion  

* Methode: GET
* Authenticatie: ConsumerRequest

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest
  * OBJECT\_NOT\_FOUND: wanneer het kanaal geen toegang heeft tot de ActivityPointsPromotion wordt deze foutcode ook gebruikt

## Voorbeeld

Request

```
GET {server}/userpoints/activityPointsPromotion/2
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<cashedIn>false</cashedIn>
<cashingPeriodBegin>2013-06-12T00:00:00+02:00</cashingPeriodBegin>
<creationDate>2013-06-12T09:28:30+02:00</creationDate>
<description1>Test</description1>
<description2>Test</description2>
<id>2</id>
<inSpotlight>false</inSpotlight>
<periodConstraint>
<periodType>ABSOLUTE</periodType>
<periodVolume>1</periodVolume>
</periodConstraint>
<pictures>
<picture>[http://media.uitid.be/fis/download/ce126667652776f0e9e55160f12f5478/6c0788dd-118c-44f7-af31-52563b5313c5/37%24Sheffield\_2sz.jpg</picture>](http://media.uitid.be/fis/download/ce126667652776f0e9e55160f12f5478/6c0788dd-118c-44f7-af31-52563b5313c5/37%24Sheffield_2sz.jpg</picture>) </pictures>
<points>1.00</points>
<title>Test</title>
<unitsTaken>0</unitsTaken>
</response> {%endhighlight %}
