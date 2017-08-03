---
---

# Update gegevens checkin device

_Method_<br> POST

_URL_<br> {prefix}/uitpas/cid/update

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| cidConsumerKey| String| identificatie van het checkin device| x| |
|name| String| naam van het checkin device| assignedBalieConsumerKey| List<String>| lijst met consumerKeys van de balie waaraan het checkin device wordt toegekend| status| String| status van het checkin device| code| ErrorCode van de fout:<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> UNKNOWN\_CID\_CONSUMERKEY<br> BALIE\_NOT\_AUTHORIZED<br> MISSING\_REQUIRED\_FIELDS| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/cid/update<br> balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7&cidConsumerKey=93f93d1d95e18d3f8a179b6564bcc3c4&status=BLOCKED

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <balies>         <balie>             <name>CC De Werf</name>             <id>57588868-EA2A-3A56-0AC173415A6D1BE7</id>         </balie>     </balies>     <consumerKey>93f93d1d95e18d3f8a179b6564bcc3c4</consumerKey>     <name>CiD1</name>     <status>BLOCKED</status> </response>
~~~
