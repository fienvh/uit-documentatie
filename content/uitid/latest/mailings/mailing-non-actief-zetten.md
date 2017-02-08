---
---

# Mailing non-actief zetten

  {server}/mailing/v2/{ID}/disable

waarbij {ID} de ID van de mailing is  

* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Response

### Succes

 HTTP 200 OK met een response body in XML formaat  
 velden

 <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> code</td> <td> Status code string</td> </tr><tr><td> mailing</td> <td> mailing entiteit</td></tr></tbody></table>

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

 <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>

## Voorbeeld

Request

  GET {server}/mailing/3/disable

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)  
  <code>MailingDisabled</code>  
  <mailing>  
  <enabled>false</enabled>  
  <frequency>MONTHLY</frequency>  
  <fromAddress>[test@uitid.be](mailto:test@uitid.be)</fromAddress>  
  <id>3</id>  
  <name>test2</name>  
  <recommendationEnabled>false</recommendationEnabled>  
  <searchEnabled>false</searchEnabled>  
  <sendEmptyRecommendationResult>false</sendEmptyRecommendationResult>  
  <sendEmptySearchResult>false</sendEmptySearchResult>  
  <serviceConsumerKey>48fe254ceba710aec4609017d2e34d91</serviceConsumerKey>  
  <startDay>0</startDay>  
  <startDayOfWeek>0</startDayOfWeek>  
  <startHour>0</startHour>  
  <startMinute>0</startMinute>  
  <subject>test2</subject>  
  <template>template update</template>  
  </mailing>  
  </response>
