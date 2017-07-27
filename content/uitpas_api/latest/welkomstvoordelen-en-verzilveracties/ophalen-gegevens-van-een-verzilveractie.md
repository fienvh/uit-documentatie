---
---

# Ophalen gegevens van een verzilveractie

_Method_  
 GET

_URL_  
 {prefix}/uitpas/promotion/pointsPromotion/{pointsPromotionId}

_Authenticatie_  
_Consumer request van de service consumer die het opvragen uitvoert_

_Required permission_  
**PERMISSION\_POINTSPROMOTION - ACTION\_READ**

_Parameters_

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |uid |String |UID van de pashouder waarvoor de verzilveroptie gezocht wordt. (mag niet gebruikt worden in combinatie met uitpasNumber) |uitpasNumber |String |uitpasnummer van de pashouder waarvoor de verzilveroptie gezocht wordt. (mag niet gebruikt worden in combinatie met uid) |**code** |**ErrorCode van de fout:**  
 UNKNOWN\_POINTS\_PROMOTION\_ID  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_LONG  
 UNKNOWN\_UITPASNUMBER  
 UNKNOWN\_PASSHOLDER\_UID |  
 |**message** |**Beschrijving van de fout** |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

GET {prefix}/uitpas/rest/uitpas/promotion/pointsPromotion/2

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <pointsPromotionTO>     <applicableCardSystems>         <cardsystem>             <id>1</id>             <name>HELA</name>         </cardsystem>     </applicableCardSystems>     <balies>         <balie>             <name>CC De Werf</name>             <id>31413BDF-DFC7-7A9F-10403618C2816E44</id>         </balie>     </balies>     <cashedIn>false</cashedIn>     <id>3</id>     <inSpotlight>false</inSpotlight>     <owningCardSystem>         <id>1</id>         <name>HELA</name>     </owningCardSystem>     <pictures/>     <points>1</points>     <title>Gratis drankje</title>     <periodConstraint>         <periodType>WEEK</periodType>         <periodVolume>1</periodVolume>     </periodConstraint>     <creationDate>2013-11-06T16:34:56+01:00</creationDate>     <cashingPeriodBegin>2010-01-01T00:00:00+01:00</cashingPeriodBegin>     <cashingPeriodEnd>2015-12-31T23:59:59+01:00</cashingPeriodEnd>     <validForCities>         <city>Aalst</city>         <city>Erpe-Mere</city>         <city>Haaltert</city>     </validForCities>     <maxAvailableUnits>200</maxAvailableUnits>     <unitsTaken>2</unitsTaken>     <cashInState>POSSIBLE</cashInState> </pointsPromotionTO>~~~<br>