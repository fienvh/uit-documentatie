---
---

# Lijst van templates ophalen

  {server}/mailing/v2/templates

* Method: `GET`
* Authenticatie: UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Response

### Succes

 HTTP 200 OK met een response body in XML formaat  

* code: Status code string
* templates: Lijst van Template entiteiten
* total: Totaal aantal templates

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden: er werd geen of geen geldig UserAccessToken meegestuurd.
* HTTP 401 Unauthorized: de gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)

## Voorbeeld

Request

  GET {server}/v2/templates

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response>  
  <code>ListTemplates</code>  
  <templates>  
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
  <template>  
  <id>1</id>  
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
  </templates>  
  <total>2</total>  
  </response>
