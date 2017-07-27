---
---

# Registreren van een pashouder

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/register

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |name |String |achternaam pashouder |x |  
 |firstName |String |voornaam pashouder |x |  
 |secondName |String |tweede naam pashouder |email |String |email adres pashouder |inszNumber |String |nationaal nummer van pashouder. Dit moet een geldig Belgisch rijksregisternummer zijn. |x (voor niet-geauthoriseerde balies) |  
 |dateOfBirth |String |geboortedatum van pashouder (in w3c format, YYYY-MM-DD) |x |  
 |gender |String |Toegelaten waarden:  
 M, MALE: man  
 V: vrouw  
 F, FEMALE: vrouw |street |String |straat pashouder |<span>number</span> <span>(Deprecated)</span> |String |huisnummer pashouder |<span>box</span> <span>(Deprecated)</span> |String |postbus pashouder |postalCode |String |postcode pashouder |x |  
 |city |String |gemeente pashouder. indien geldige deelgemeente opgegeven wordt, wordt deze automatisch omgezet naar de hoofdgemeente. de postcode blijft behouden. |x |  
 |telephone |String |telefoonnummer pashouder |gsm |String |GSM nummer pashouder |nationality |String |nationaliteit pashouder |placeOfBirth |String |geboorteplaats pashouder |uitpasNumber |String |nummer van de uitpas |x |  
 |Validatie: 13 cijfers. Eerste 5 cijfers geven gemeente aan (counter + 4 cijferige postcode). 1 cijfer die kansenstatuut aangeeft (0 = geen kansenstatuut, 1 = kansenstatuuut). Tot slot 1 cijferige Luhn-checkdigit. |voucherNumber |String |nummer van een voucher |kansenStatuut |Boolean |true indien pashouder met kansenstatuut, false indien pashouder zonder kansenstatuut |kansenStatuutEndDate |W3CDate |einddatum kansenstatuut |x |  
 |verified |boolean |true indien de gegevens van de pashouder werden ingelezen via belgium eid, false otherwise |moreInfo |String |een vrij tekstveld met informatie over deze pashouder |schoolConsumerKey |String |consumerKey van de school van deze pashouder |emailPreference |String |‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’ |smsPreference |String |‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’ |balieConsumerKey |String |ConsumerKey van de balie waarop deze pashouder wordt geregistreerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 ACTION\_FAILED  
 MISSING\_REQUIRED\_FIELDS  
 INSZ\_ALREADY\_USED  
 EMAIL\_ALREADY\_USED  
 UNKNOWN\_VOUCHER (geen voucher gevonden met opgegeven nummer)  
 UNKNOWN\_CARD (geen kaart gevonden met opgegeven nummer)  
 CARD\_NOT\_ASSIGNED\_TO\_BALIE (Uitpas is niet verdeeld aan balie)  
 INVALID\_CARD (Uitpasnummer van een kansenpas verplicht indien pashouder met kansenstatuut of Pashouder met kansenstatuut verplicht indien uitpasnummer van kansenpas)  
 INVALID\_CARD\_STATUS (kaart was niet in LOCAL\_STOCK)  
 INVALID\_VOUCHER\_STATUS (voucher is reeds verzilverd)  
 UNKNOWN\_SCHOOL  
 PARSE\_INVALID\_CITY\_NAME  
 PARSE\_INVALID\_POSTAL\_CODE  
 PARSE\_INVALID\_INSZ  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_VOUCHERNUMBER  
 PARSE\_INVALID\_GENDER  
 PARSE\_INVALID\_DATE  
 PARSE\_INVALID\_DATE\_OF\_BIRTH  
 BALIE\_NOT\_AUTHORIZED  
 ACCESS\_DENIED  
 INVALID\_EMAIL\_ADDRESS (het email adres is niet geldig = bevat geen @ of '.') |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/passholder/register

dateOfBirth=1993-05-18&placeOfBirth=&street=&city=Haaltert&uitpasNumber=0930056878802&nationality=&postalCode=9450&email=janssen.p%40telenet.be&name=Janssen&inszNumber=93051822361&gender=M&firstName=Pieter&telephone=

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<message>94305b2e-e7ff-4dfc-8d96-ef4d43de9038</message> 	<resource>/uitpas/passholder/0930056878802</resource> </response>~~~<br>