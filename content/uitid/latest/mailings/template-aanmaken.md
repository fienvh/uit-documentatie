---
---

# Template aanmaken

  {server}/mailing/v2/template

* Methode: `POST`
* Authenticatie: UserAccessToken van de gebruiker met admin permissie op Service Consumer


## Parameters

| name | String | naam van de template | Verplicht |
| template | String | velocity template waarmee de body van de mail samengesteld zal worden | Verplicht |
| subject | String | onderwerp van de mail | Verplicht |
| frequency | ONCE, DAILY, WEEKLY, BIWEEKLY, MONTHLY | Frequentie van het versturen van de mailing | Verplicht |
| fromAddress | String | afzenderadres van de mail | Verplicht |
| scheduledDate | String | verzenddatum, formaat YYYY-MM-DD |
| startDay | int | dag van de maand waarop de mailing verstuurd moet worden (enkel indien frequency = MONTHLY) |
| startDayOfWeek | int | Dag van de week (1=maandag, 2=dinsdag, …) waarop verstuurd moet worden (enkel bij frequency = WEEKLY of BIWEEKLY) |
| startHour | int | Uur van de dag waarop verstuurd moet worden. Waarde verplicht tussen 6 en 22. | Verplicht |
| startMinute | int | Minuut waarop verstuurd moet worden. Default 0. |
| block1 | String | Vrij in te vullen tekstblok 1 |
| block2 | String | Vrij in te vullen tekstblok 2 |
| block3 | String | Vrij in te vullen tekstblok 3 |
| block4 | String | Vrij in te vullen tekstblok 4 |
| block5 | String | Vrij in te vullen tekstblok 5 |
| block6 | String | Vrij in te vullen tekstblok 6 |
| searchQuery | String | Query die gebruikt moet worden om evenementen op te halen. Alle parameters van de UitDatabank Search API kunnen hier gebruikt worden. Zie |
| recommendationQuery | String | Query die gebruikt moet worden om evenementen op te halen op basis van de gebruikersaanbevelingen. Zie [Gebruikersaanbevelingen ophalen](http://tools.uitdatabank.be/docs/uitid/recommendation#1.%20Gebruikersaanbevelingen%20ophalen) voor de mogelijk query parameters |
| searchEnabled | boolean | bepaalt of de searchQuery uitgevoerd moet worden (true | false) default = false |
| recommendationEnabled | boolean | bepaalt of de recommendationQuery uitgevoerd moet worden (true | false) default = false |
| sendEmptySeachResult | boolean | bepaalt of de mail gestuurd wordt indien het resultaat van de searchQuery een lege lijst is (true | false) default = false |
| sendEmptyRecommendationResult | boolean | boolean bepaalt of de mail gestuurd wordt indien het resultaat van de recommendationQuery een lege lijst is (true | false) default = false |

## Response  

### Succes

HTTP 200 OK met een response body in XML formaat  

* code: Status code string
* template: template entiteit

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden: er werd geen of geen geldig UserAccessToken meegestuurd.
* HTTP 401 Unauthorized: de gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)
* HTTP 400 Bad requests: code - MissingFields in geval één van de verplichte velden ontbreekt


## Voorbeeld

Request  


  POST {server}/mailing/v2/template


Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)  
  <code>TemplateCreated</code>  
  <template>  
  <id>2</id>  
  <name>TestTemplate</name>  
  <template>template</template>  
  <subject>TestMailing</subject>  
  <frequency>DAILY</frequency>  
  <startDay>0</startDay>  
  <startHour>0</startHour>  
  <startMinute>0</startMinute>  
  <startDayOfWeek>0</startDayOfWeek>  
  <recommendationsResultEqualTreshold>100</recommendationsResultEqualTreshold>  
  <searchResultEqualTreshold>100</searchResultEqualTreshold>  
  <serviceConsumerKey>68bd998e84216f530bb5b4f742ffab41</serviceConsumerKey>  
  </template>
  </response>
