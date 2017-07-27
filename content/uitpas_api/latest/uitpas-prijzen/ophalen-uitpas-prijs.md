---
---

# Ophalen uitpas prijs

_Method_  
 GET

_URL_  
 {prefix}/uitpas/price

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |balieConsumerKey |String |ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |uitpasNumber |String |identificatie van een kaart |x |  
 |dateOfBirth |W3CDate |Geboortedatum van de pashouder |postalCode |String |postcode van de pashouder |voucherNumber |String |identificatie van een voucher |reason |String |Reden van kaartverkoop. De mogelijke waarden zijn:  
 FIRST\_CARD  
 CARD\_UPGRADE  
 EXTRA\_CARD  
 LOSS\_THEFT  
 REMOVAL  
 LOSS\_KANSENSTATUUT  
 OBTAIN\_KANSENSTATUUT |x |  
_Authenticatie_  
_User access token van de balie medewerker die de actie uitvoert_

_Required permission_  
 De gebruiker die de actie uitvoert moet medewerkter zijn van de opgegeven balie. De opgegeven balie moet pashouders kunnen registereren.

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met response body in XML formaat.

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat.

 |code |ErrorCode van de fout:  
 UNKNOWN\_CARD  
 PARSE\_INVALID\_UITPASNUMBER  
 UNKNOWN\_VOUCHER  
 PARSE\_INVALID\_VOUCHERNUMBER  
 PARSE\_INVALID\_UITPAS\_STATUS\_CHANGE\_REASON (ongekende waarde voor parameter reason)  
 BALIE\_NOT\_AUTHORIZED (kaart is niet toegekend aan de balie)  
 MISSING\_REQUIRED\_FIELDS  
 INVALID\_VOUCHER\_STATUS |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

GET {prefix}/uitpas/price

balieConsumerKey=8bd020fb-a55a-4d15-b71c-1a1632cb7f00  
 uitpasNumber=0934000185108  
 dateOfBirth=2010-01-01  
 reason=FIRST\_CARD

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <uitpasPrice>         <id>148</id>         <reason>FIRST_CARD</reason>         <cardType>CARD</cardType>         <ageRange>             <ageTo>17</ageTo>         </ageRange>         <kansenstatuut>false</kansenstatuut>         <price>2.00</price>         <cardSystem>             <id>1</id>             <name>UiTPAS Regio Aalst</name>         </cardSystem>     </uitpasPrice> </response>~~~<br>