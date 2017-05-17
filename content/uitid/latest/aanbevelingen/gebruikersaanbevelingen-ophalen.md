---
---

# Gebruikersaanbevelingen ophalen

Gebruikers kunnen aanbevelingen bekijken, gebaseerd op hun geaccumuleerd klikgedrag over alle UiTiD kanalen waarvan ze gebruik maken.

Service consumers kunnen aanbevelingen filteren op bepaalde parameters zoals geografische locatie, eventlocatie, stad, zipcode (+straal) type  Indien er wijzigingen binnen de admin gebeuren omtrent deze aanbevelingen zullen deze pas na 1 uur effect hebben (caching).

{server}/recommendation/user/{ID}
waar {ID} de ID van de gebruiker is waarvoor aanbevelingen opgehaald worden

* Methode: GET
* Authenticatie:  UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| Parameter | Type | Beschrijving
| --- | --- | --- |
| category | String | categorie van de evenementen waarvoor aanbevelingen opgehaald worden. Deze parameter kan herhaald worden. |
| scoreMin | int | deze parameter wordt voorlopig genegeerd. |
| location | String | Coordinaten van de locatie waarvoor aanbevelingen gezocht moeten worden in formaat lat;lon[!radius] radius = straal in km (standaard) of m bv: 50.8554;4.351!1.5km of 50.8554;4.351!1500m |
| location\_simple | String | Een string die de locatie van het evenement (=titel van de locatie) bevat. Deze parameter is herhaalbaar. |
| location\_city | String | Zoek evenementen in deze gemeente. Deze parameter is herhaalbaar. |
| zipcode | String | Zoek evenementen met deze postcode. Deze parameter is herhaalbaar. Optioneel kan er een straal opgegeven worden waarbinnen gezocht moet worden. formaat postcode!radius radius = straal in km (standaard) of m bv: 3000!10km zoekt in een straal van 10km rond Leuven. Opgelet: Indien er een straal meegegeven wordt, kan deze parameter niet herhaald worden en wordt de eventuele waarde van de location parameter genegeerd. |
| tag | String | Zoek evenementen met deze tag. Deze parameter kan herhaald worden |
| maxViewed | int | Toon enkel aanbevelingen die een maximum aantal keer bekeken zijn via deze service consumer. |
| max | int | Maximum aantal aanbevelingen om op te halen |

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

| code | Status code string |
| recommendations | lijst van gevonden recommendation objecten |

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

| HTTP 403 Forbidden | Er werd geen of geen geldig UserAccessToken meegestuurd |

## Voorbeeld

Request: GET

```
{server}/recommendation/user/b726781c-84d5-472f-93dc-74ed982658f8
```

Response

{% highlight xml %}
<xml>  
<response>  
<code>GetRecommendationsResult</code>  
<recommendations>  
<recommendation>  
<id>21</id>  
<itemid>0042d9b0-ae0a-4cd1-89f4-9384119986f8</itemid>  
<score>4.12844</score>  
<algorithm>PopRecommender</algorithm>  
<item>  
<id>0042d9b0-ae0a-4cd1-89f4-9384119986f8</id>  
<permalink>http://www.uitinvlaanderen.be/agenda/e/the-howling/0042d9b0-ae0a-4cd1-89f4-9384119986f8</permalink>
<title>The howling</title>  
<category>Nationaal</category>  
<category>Film</category>  
<category>Meerdere filmgenres</category>  
<description\_short>De speurtocht van een onderzoeksjournaliste (Dee Wallace) naar een seriemoordenaar brengt haar op het pad van een groep bloeddorstige weerwolven.</description\_short>  
<description\_full>vrij 30/12/11 van 21:00 tot 22:29</description\_full>  
<location\_simple>CINEMATEK</location\_simple>  
<location\_latlong>50.844393,4.359834</location\_latlong>  
<tag>Weerwolven</tag>  
<segment>1000</segment>  
<creator>Joe Dante</creator>  
<creator>Dee Wallace</creator>  
<creator>Christopher Stone</creator>  
<creator>Patrick Macnee</creator>  
</item>  
</recommendation>  
<recommendation>  
<id>22</id>  
<itemid>004d1cf0-4f94-4655-a0b5-9badace67e67</itemid>  
<score>4.12844</score>  
<algorithm>PopRecommender</algorithm>  
<item>  
<id>004d1cf0-4f94-4655-a0b5-9badace67e67</id>  
<permalink>http://www.uitinvlaanderen.be/agenda/e/daguitstapje-colruyt/004d1cf0-4f94-4655-a0b5-9badace67e67</permalink>
<title>Daguitstapje colruyt</title>  
<category>Begeleide uitstap of rondleiding</category>  
<category>Senioren</category>  
<category>Geschiedenis</category>  
<description\_short>we starten met de rondleiding die als volgt verloopt: expeditieplein, karrenwas, diepvries (-26?C), frigo, receptie groenten/fruit + diepvriesproducten, appelen/peren frigo, citrusfrigo, verpakkingsafdeling groenten/fruit, orderpikker. Via de kaasafdeling passeren we de windmolen, bakkenwasafdeling, recyclage/afvalsorteercentrum, frigo's verse producten.  
Het bezoek duurt ongeveer 2u30</description\_short>  
<description\_full>di 21/02/12 van 07:00 tot 20:00</description\_full>  
<location\_simple>colruyt</location\_simple>  
<location\_latlong>50.728768,4.223299</location\_latlong>  
<segment>1500</segment>  
<creator>Colruyt</creator>  
</item>  
</recommendation>  
</recommendations>  
</response>
{% endhighlight %}
