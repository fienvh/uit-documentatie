---
---

# Ophalen omruilvoordelen

_Method_  
 GET  
_URL_

{prefix}/uitpas/passholder/pointsPromotions

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |city |String |List is cities where the pointspromotions must be valid. |minPoints |Integer |Minimum number of points needed for the pointspromotion |maxPoints |Integer |Maximum number of points needed for the pointspromotion |balieConsumerKey |String |ConsumerKey van de balie waar de verzilveropties kan verzilverd worden. Kan herhaald worden. |cashingPeriodBegin |W3CDate |Verzilverperiode vanaf |cashingPeriodEnd |W3CDate |Verzilverperiode tot |sort |String |Sort field. Possible values: CREATION\_DATE, TITLE, CASHING\_PERIOD\_END, POINTS. Default value: CREATION\_DATE |order |String |Sort direction. Possible values: ASC, DESC. Default value: DESC |max |Integer |Maximum number of results. Default: 20 |start |Integer |Results offset. Default: 0 |uid |String |UID van de pashouder waarvoor verzilveropties gezocht worden. (mag niet gebruikt worden in combinatie met uitpasNumber) |uitpasNumber |String |uitpasnummer van de pashouder waarvoor verzilveropties gezocht worden. (mag niet gebruikt worden in combinatie met uid) |filterOnUserPoints |Boolean |Default: false. Indicates if the system must only show the pointspromotions for which the user has sufficient points |simulatedExtraPoints |Integer |Can be used to see which pointspromotions are possible if the user had e.g. 5 extra points. |unexpired |Boolean |Default: false. Indicates that only unexpired points promotions are returned. |published |Boolean |Default: false. Indien true, dan worden enkel pointspromotions gevonden waarvoor de huidige datum ligt binnen de publicationPeriod |owningCardSystemId |List<Long> |id of a CardSystem, will be used to filter only points promotions that are owned by this cardsystem |orderByOwningCardSystemId |Long |voordelen waarvan het opgegeven kaartsysteem eigenaar is worden bovenaan in de zoekresultaten geplaatst |applicableCardSystemId |List<Long> |id of a CardSystem, will be used to filter only points promotions that are applicable to this cardsystem |inSpotlight |boolean |Filter op In de kijker voordelen |code |ErrorCode van de fout:  
 INVALID\_CARD (indien de pashouder verwijderd werd)  
 INVALID\_INTERVAL\_MIN\_HIGHER\_THAN\_MAX  
 INVALID\_INTERVAL\_BEGIN\_DATE\_AFTER\_END\_DATE  
 INVALID\_PARAMETERS  
 PARSE\_INVALID\_CITY\_NAME  
 PARSE\_INVALID\_DATE  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 UNKNOWN\_PASSHOLDER\_UID  
 UNKNOWN\_CARD\_SYSTEM |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
Nota: de PointPromotion entiteit bevat codes zoals “NOT\_POSSIBLE\_DATE\_CONSTRAINT” in het veld cashInState per gevonden PointsPromotion. Dat zijn echter geen algemene error codes.

_Voorbeeld request_

GET {prefix}/uitpas/passholder/pointsPromotions?max=20&start=1&city=Aalst&minPoints=1&maxPoints=10&balieConsumerKey=testkey31413BDF-DFC7-7A9F-10403618C2816E44&cashingPeriodBegin=31/12/2009&cashingPeriodEnd=31/12/2011&sort=TITLE&order=ASC&uid=8778353d-eac2-4afe-9ac2-59a26d62e2ed&filterOnUserPoints=true&simulatedExtraPoints=20

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <promotions>         <promotion> 			<applicableCardSystems>                 <cardsystem>                     <id>1</id>                     <name>HELA</name>                 </cardsystem>             </applicableCardSystems>             <balies>                 <balie>                     <name>'t Gasthuys - Stedelijk Museum Aalst</name>                     <id>5</id>                 </balie>                 <balie>                     <name>CC De Werf</name>                     <id>7</id>                 </balie>             </balies>             <cashedIn>false</cashedIn>             <id>7</id> 			<owningCardSystem>                 <id>1</id>                 <name>HELA</name>             </owningCardSystem>             <pictures>                 <picture>http://picture_url/3720198_300.jpg</picture>             </pictures>             <points>5</points>             <title>Gratis stickers</title>             <creationDate>2012-02-23T16:25:57+01:00</creationDate>             <cashingPeriodBegin>2010-01-01T00:00:00+01:00</cashingPeriodBegin>             <cashingPeriodEnd>2015-12-31T00:00:00+01:00</cashingPeriodEnd>             <validForCities>                 <city>Aalst</city>                 <city>Erpe-Mere</city>                 <city>Haaltert</city>             </validForCities>             <maxAvailableUnits>2</maxAvailableUnits>             <unitsTaken>2</unitsTaken>         </promotion>         <promotion>             <balies>                 <balie>                     <name>CC De Werf</name>                     <id>7</id>                 </balie>             </balies>             <cashedIn>false</cashedIn>             <id>6</id>             <points>5</points>             <title>Gratis drankje</title>             <creationDate>2012-02-23T16:25:57+01:00</creationDate>             <cashingPeriodBegin>2010-01-01T00:00:00+01:00</cashingPeriodBegin>             <cashingPeriodEnd>2015-12-31T00:00:00+01:00</cashingPeriodEnd>             <validForCities>                 <city>Aalst</city>                 <city>Erpe-Mere</city>                 <city>Haaltert</city>             </validForCities>             <maxAvailableUnits>2</maxAvailableUnits>             <unitsTaken>1</unitsTaken>         </promotion>     </promotions>     <total>2</total> </response>~~~<br>