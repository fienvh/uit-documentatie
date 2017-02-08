---
---

# Evenement aanbevelingen ophalen

phalen van gelijkaardige events. De gelijkaardigheid is gebaseerd op gebruikersgedrag,niet op inhoud van het event. Events die vaak door dezelfde gebruikers geapprecieerd worden zijn “gelijkaardig”

{server}/recommendation/event

* Methode: GET
* Authenticatie:
  * ConsumerRequest van de Service Consumer die de opdracht uitvoert
  * UserAccessToken van de gebruiker die de actie uitvoert

Opmerking_: Indien aanbevelingen worden opgehaald met een ConsumerRequest, dan hebben de recommendation entiteiten geen ID, en kunnen ze bijgevolg niet geevalueerd worden. Indien een UserAccessToken gebruikt wordt, dan hebben ze wel een ID en kunnen ze wel geevalueerd worden.<

## Parameters

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><thead><tr><th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </tr></thead><tbody><tr><td> eventId</td> <td> String</td> <td> CDBID van het evenement</td> <td> x</td> </tr><tr><td> category</td> <td> String</td> <td> categorie van de evenementen waarvoor aanbevelingen opgehaald worden. Deze parameter kan herhaald worden</td> <td> </td> </tr><tr><td> scoreMin</td> <td> int</td> <td> Deze parameter wordt voorlopig genegeerd</td> <td> </td> </tr><tr><td> location</td> <td> String</td> <td> Coordinaten van de locatie waarvoor aanbevelingen gezocht moeten worden in formaat lat;lon[!radius]  
radius = straal in km (standaard) of m  
bv: 50.8554;4.351!1.5km of 50.8554;4.351!1500m</td> <td> </td> </tr><tr><td> location\_simple</td> <td> String</td> <td> Een string die de locatie van het evenement (=titel van de locatie) bevat. Deze parameter is herhaalbaar</td> <td> </td> </tr><tr><td> location\_city</td> <td> String</td> <td> Zoek evenementen in deze gemeente. Deze parameter is herhaalbaar</td> <td> </td> </tr><tr><td> zipcode</td> <td> String</td> <td> Zoek evenementen met deze postcode.  
(deze parameter is herhaalbaar)  
Optioneel kan er een straal opgegeven worden waarbinnen gezocht moet worden. formaat postcode!radius  
radius = straal in km (standaard) of m  
bv: 3000!10km zoekt in een straal van 10km rond Leuven.  
Opgelet: Indien er een straal meegegeven wordt, kan deze parameter niet herhaald worden en wordt de eventuele waarde van de location parameter genegeerd.</td> <td> </td> </tr><tr><td> tag</td> <td> String</td> <td> Zoek evenementen met deze tag. Deze parameter kan herhaald worden</td> <td> </td> </tr><tr><td> maxViewed</td> <td> int </td> <td> Toon enkel aanbevelingen die een maximum aantal keer bekeken zijn via deze service consumer</td> <td> </td> </tr><tr><td> max</td> <td> int</td> <td> Maximum aantal aanbevelingen om op te halen</td> <td> </td> </tr></tbody></table></div><div>

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> code</td> <td> Status code string</td> </tr><tr><td> recommendations</td> <td> lijst van gevonden recommendation objecten</td></tr></tbody></table>

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

<table border="1" cellpadding="1" cellspacing="1" style="width: 500px;"><tbody><tr><td> HTTP 400 Bad request</td> <td> Ontbrekende verplichte velden</td> </tr><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldige UserAccessToken meegestuurd</td></tr></tbody></table>

## Voorbeeld

Request

  GET {server}/recommendation/event  
  eventId=12a11fc1cee46e3ec91f46e0a8bc42f2a1d048eed8d71af2c710f18ea48b13c8

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)  
  <code>GetRecommendationsResult</code>  
  <recommendations>  
  <recommendation>  
  <itemid>24a8ac40-e022-4e3f-b537-e20d682a0963</itemid>  
  <score>1.0</score>  
  <algorithm>SimilarCF</algorithm>  
  <item>  
  <id>24a8ac40-e022-4e3f-b537-e20d682a0963</id>  
  <permalink><http://www.uitinvlaanderen.be/agenda/e/bezoek-aan-een-jonge-kunstgalerij--zonder-drempelvrees/24a8ac40-e022-4e3f-b537-e20d682a0963</permalink>>  
  <title>Bezoek aan een jonge kunstgalerij zonder drempelvrees</title>  
  <category>Meerdere kunstvormen</category>  
  <category>Tentoonstelling</category>  
  <description\_short>YesArtGallery brengt tentoonstellingen die zo'n anderhalve maand duren. Meestal komen twee schilders en ??n beeldhouw(st)er aan bod. Gelieve ons programma te raadplegen op [www.YesartGallery.com](http://www.YesartGallery.com)  
  Van harte welkom !</description\_short>  
  <description\_full>Altijd open</description\_full>  
  <location\_simple>St-Idesbald - Koksijde</location\_simple>  
  <location\_latlong>51.108079,2.613827</location\_latlong>  
  <segment>8670</segment>  
  </item>  
  </recommendation>  
  <recommendation>  
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
  </recommendations>  
  </response>

  </div>
