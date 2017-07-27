---
---

# Ophalen gegevens van een welkomstvoordeel

_Method_  
 GET

_URL_  
 {prefix}/uitpas/promotion/welcomeAdvantage/{welcomeAdvantageId}

_Authenticatie_  
_Consumer request van de service consumer die het opvragen uitvoert_

_Required permission_  
**PERMISSION\_WELCOMEADVANTAGE - ACTION\_READ**

_Parameters_

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |uid |String |UID van de pashouder waarvoor de verzilveroptie gezocht wordt. (mag niet gebruikt worden in combinatie met uitpasNumber) |uitpasNumber |String |uitpasnummer van de pashouder waarvoor het welkomstvoordeel gezocht wordt. (mag niet gebruikt worden in combinatie met uid) |**code** |**ErrorCode van de fout:**  
 UNKNOWN\_WELCOME\_ADVANTAGE\_ID  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_LONG  
 UNKNOWN\_UITPASNUMBER  
 UNKNOWN\_PASSHOLDER\_UID |  
 |**message** |**Beschrijving van de fout** |  
_Voorbeeld request_

GET {prefix}/uitpas/rest/uitpas/promotion/welcomeAdvantage/1

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <welcomeAdvantageTO>     <applicableCardSystems>         <cardsystem>             <id>2</id>             <name>TEMP</name>         </cardsystem>         <cardsystem>             <id>1</id>             <name>HELA</name>         </cardsystem>     </applicableCardSystems>     <balies>         <balie>             <name>CC De Werf</name>             <id>31413BDF-DFC7-7A9F-10403618C2816E44</id>         </balie>     </balies>     <cashedIn>false</cashedIn>     <description1></description1>     <description2></description2>     <id>1</id>     <inSpotlight>false</inSpotlight>     <owningCardSystem>         <id>1</id>         <name>HELA</name>     </owningCardSystem>     <pictures/>     <points>0</points>     <title>welkomstvoordeel: gratis sleutelhanger</title>     <creationDate>2013-11-06T16:34:55+01:00</creationDate>     <validForCities>         <city>Aalst</city>         <city>Erpe-Mere</city>         <city>Haaltert</city>         <city>Lede</city>     </validForCities>     <maxAvailableUnits>1000</maxAvailableUnits>     <unitsTaken>66</unitsTaken> </welcomeAdvantageTO>~~~<br>