---
---

# Opzoeken van uitpasnummer

_Method_  
 GET

_URL_  
 {prefix}/uitpas/card

Parameters:

 |**Naam** |**Type** |**Omschrijving** |  
 |chipNumber |String |chip nummer waarvoor de uitpas nummer gezocht zal worden |  
 |x ofwel chipnumber ofwel uitpasNumber) |uitpasNumber |String |  
 |uitpasnummer van de kaart |x (ofwel chipnumber ofwel uitpasNumber) |balieConsumerKey |  
 |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 MISSING\_REQUIRED\_FIELDS  
 UNKNOWN\_CHIPNUMBER |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

GET {prefix}/uitpas/card?chipNumber=111299

_Voorbeeld response_

~~~
 <response>     <cardSystem>         <id>1</id>         <name>UiTPAS Regio Aalst</name>     </cardSystem>     <cardType>CARD</cardType>     <kansenpas>true</kansenpas>     <status>ACTIVE</status>     <uitpasNumber>0930000001410</uitpasNumber> </response>~~~<br>