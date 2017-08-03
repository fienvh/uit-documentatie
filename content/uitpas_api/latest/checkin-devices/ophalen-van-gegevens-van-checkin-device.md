---
---

# Ophalen van gegevens van checkin device

_Method_<br> GET

_URL_<br> {prefix}/uitpas/cid/{cidConsumerKey}

Parameters:

 

|| | | | |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout: UNKNOWN\_BALIE\_CONSUMERKEY UNKNOWN\_CID\_CONSUMERKEY ACTION\_NOT\_ALLOWED| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET {prefix}/uitpas/cid/516a0d124281f1275e41f7755b82243f

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <balies>         <balie>             <name>CC De Werf</name>             <id>testkey57588868-EA2A-3A56-0AC173415A6D1BE7</id>         </balie>     </balies>     <cdbid>e0a98c05-d0b1-47b8-a13e-0b5db55369d8</cdbid>     <consumerKey>516a0d124281f1275e41f7755b82243f</consumerKey>     <name>cid1</name>     <status>ACTIVE</status> </response>
~~~
