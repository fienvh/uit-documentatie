---
---

# Ophalen verzilverde omruilvoordelen

_Method_  
 GET

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}/cashedPointsPromotions

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |cashingPeriodBegin |W3CDate |startdatum voor verzilverdatum van omruilvoordelen |cashingPeriodEnd |W3CDate |einddatum voor verzilverdatum van omruilvoordelen. Zoek omruilvoordelen die in de opgegeven periode werden verzilverd. |sort |String |Sort field. Possible values: TITLE, BALIE, CITY, CASHINGDATE; |order |String |Sort direction. Possible values: ASC, DESC. Default value: DESC |max |Integer |Maximum number of results. Default: 20 |start |Integer |Results offset. Default: 0 |cashedPromotions |List<CashedPointsPromotion> |lijst van verzilverde verzilver acties |  
 |total |Integer |Totaal aantal resultaten van de zoekopdracht |  
<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 INVALID\_INTERVAL\_MIN\_HIGHER\_THAN\_MAX  
 INVALID\_INTERVAL\_BEGIN\_DATE\_AFTER\_END\_DATE  
 INVALID\_PARAMETERS  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 PARSE\_INVALID\_UITPASNUMBER |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

GET {prefix}/uitpas/passholder/0930012345607/cashedPointsPromotions?balieConsumerKey=testkey31413BDF-DFC7-7A9F-10403618C2816E44

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <cashedPromotions>         <cashedPromotion>             <id>18</id>             <promotion>                 <balies/>                 <cashedIn>true</cashedIn>                 <id>7</id>                 <points>5</points>                 <title>Gratis stickers</title>             </promotion>             <cashingDate>2012-02-29T14:18:49+01:00</cashingDate>             <balie>                 <name>'t Gasthuys - Stedelijk Museum Aalst</name>                 <id>testkey5c9c73d3-e82f-e7b3-44161e6e3802e64f</id>             </balie>         </cashedPromotion>         <cashedPromotion>             <id>19</id>             <promotion>                 <balies/>                 <cashedIn>true</cashedIn>                 <id>6</id>                 <points>5</points>                 <title>Gratis drankje</title>             </promotion>             <cashingDate>2012-02-29T14:18:49+01:00</cashingDate>             <balie>                 <name>CC De Werf</name>                 <id>testkey31413BDF-DFC7-7A9F-10403618C2816E44</id>             </balie>         </cashedPromotion>     </cashedPromotions>     <total>2</total> </response>~~~<br>