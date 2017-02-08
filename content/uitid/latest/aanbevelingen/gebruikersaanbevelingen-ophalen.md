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

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><thead><tr><th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </tr></thead><tbody><tr><td> category</td> <td> String</td> <td> categorie van de evenementen waarvoor aanbevelingen opgehaald worden. Deze parameter kan herhaald worden</td> <td> </td> </tr><tr><td> scoreMin</td> <td> int</td> <td> deze parameter wordt voorlopig genegeerd</td> <td> </td> </tr><tr><td> location</td> <td> String</td> <td> Coordinaten van de locatie waarvoor aanbevelingen gezocht moeten worden in formaat lat;lon[!radius]  
 radius = straal in km (standaard) of m  
 bv: 50.8554;4.351!1.5km of 50.8554;4.351!1500m</td> <td> </td> </tr><tr><td> location\_simple</td> <td> String</td> <td> Een string die de locatie van het evenement (=titel van de locatie) bevat. Deze parameter is herhaalbaar</td> <td> </td> </tr><tr><td> location\_city</td> <td> String</td> <td> Zoek evenementen in deze gemeente. Deze parameter i herhaalbaar</td> <td> </td> </tr><tr><td> zipcode</td> <td> String</td> <td> Zoek evenementen met deze postcode.  
 (deze parameter is herhaalbaar)  Optioneel kan er een straal opgegeven worden waarbinnen gezocht moet worden. formaat postcode!radius  
 radius = straal in km (standaard) of m  
 bv: 3000!10km zoekt in een straal van 10km rond Leuven.  
 Opgelet: Indien er een straal meegegeven wordt, kan deze parameter niet herhaald worden en wordt de eventuele waarde van de location parameter genegeerd.

</td> <td> </td> </tr><tr><td> tag</td> <td> String</td> <td> Zoek evenementen met deze tag. Deze parameter kan herhaald worden</td> <td> </td> </tr><tr><td> maxViewed</td> <td> int</td> <td> Toon enkel aanbevelingen die een maximum aantal keer bekeken zijn via deze service consumer</td> <td> </td> </tr><tr><td> max</td> <td> int</td> <td> Maximum aantal aanbevelingen om op te halen</td> <td> </td> </tr></tbody></table>

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> code</td> <td> Status code string</td> </tr><tr><td> recommendations</td> <td> lijst van gevonden recommendation objecten</td></tr></tbody></table>

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd</td></tr></tbody></table>

## Voorbeeld

Request

  GET {server}/recommendation/user/b726781c-84d5-472f-93dc-74ed982658f8

Response  

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)  
  <code>GetRecommendationsResult</code>  
  <recommendations>  
  <recommendation>  
  <id>21</id>  
  <itemid>0042d9b0-ae0a-4cd1-89f4-9384119986f8</itemid>  
  <score>4.12844</score>  
  <algorithm>PopRecommender</algorithm>  
  <item>  
  <id>0042d9b0-ae0a-4cd1-89f4-9384119986f8</id>  
  <permalink><http://www.uitinvlaanderen.be/agenda/e/the-howling/0042d9b0-ae0a-4cd1-89f4-9384119986f8</permalink>>  
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
  <permalink><http://www.uitinvlaanderen.be/agenda/e/daguitstapje-colruyt/004d1cf0-4f94-4655-a0b5-9badace67e67</permalink>>  
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
