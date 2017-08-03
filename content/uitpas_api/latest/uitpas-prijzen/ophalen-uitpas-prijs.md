---
---

# Ophalen uitpas prijs

_Method_<br> GET

_URL_<br> {prefix}/uitpas/price

Parameters:

 

|| | | | |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| uitpasNumber| String| identificatie van een kaart| x| |
|dateOfBirth| W3CDate| Geboortedatum van de pashouder| postalCode| String| postcode van de pashouder| voucherNumber| String| identificatie van een voucher| reason| String| Reden van kaartverkoop. De mogelijke waarden zijn:<br> FIRST\_CARD<br> CARD\_UPGRADE<br> EXTRA\_CARD<br> LOSS\_THEFT<br> REMOVAL<br> LOSS\_KANSENSTATUUT<br> OBTAIN\_KANSENSTATUUT| x||

_Authenticatie_<br> _User access token van de balie medewerker die de actie uitvoert_

_Required permission_<br> De gebruiker die de actie uitvoert moet medewerkter zijn van de opgegeven balie. De opgegeven balie moet pashouders kunnen registereren.

**Response**

<u>Bij succes</u><br> HTTP 200 OK met response body in XML formaat.

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat.

 

|code| ErrorCode van de fout:<br> UNKNOWN\_CARD<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_VOUCHER<br> PARSE\_INVALID\_VOUCHERNUMBER<br> PARSE\_INVALID\_UITPAS\_STATUS\_CHANGE\_REASON (ongekende waarde voor parameter reason)<br> BALIE\_NOT\_AUTHORIZED (kaart is niet toegekend aan de balie)<br> MISSING\_REQUIRED\_FIELDS<br> INVALID\_VOUCHER\_STATUS| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET {prefix}/uitpas/price

balieConsumerKey=8bd020fb-a55a-4d15-b71c-1a1632cb7f00<br> uitpasNumber=0934000185108<br> dateOfBirth=2010-01-01<br> reason=FIRST\_CARD

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <uitpasPrice>         <id>148</id>         <reason>FIRST_CARD</reason>         <cardType>CARD</cardType>         <ageRange>             <ageTo>17</ageTo>         </ageRange>         <kansenstatuut>false</kansenstatuut>         <price>2.00</price>         <cardSystem>             <id>1</id>             <name>UiTPAS Regio Aalst</name>         </cardSystem>     </uitpasPrice> </response>
~~~
