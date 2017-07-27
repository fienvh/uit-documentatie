---
---

# Update pashouder

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}

Parameters:

 |**Naam** |**Type** |**Omschrijving** |  
 |name |String |Naam van de pashouder |  
 |firstName |String |Voornaam van de pashouder |  
 |secondName |String |Tweede van de pashouder |  
 |inszNumber |String |Nationaal nummer van de pashouder. Dit kan enkel aangepast worden wanneer er nog geen nationaal nummer voor de pashouder gekend is. |  
 |email |String |Email adres van de pashouder |  
 |dateOfBirth |W3CDate |Geboortedatum. |  
 |street |String |Straat |  
 |<span>number</span> <span>(Deprecated)</span> |String |Huisnummer |  
 |<span>box</span> <span>(Deprecated)</span> |String |Box |  
 |postalCode |String |Postcode |  
 |city |String |gemeente pashouder. indien geldige deelgemeente opgegeven wordt, wordt deze automatisch omgezet naar de hoofdgemeente. de postcode blijft behouden. |  
 |telephone |String |Telefoonnummer |  
 |nationality |String |Nationaliteit |  
 |placeOfBirth |String |Geboorteplaats |  
 |gender |String |Geslacht. Mogelijke waarden: ‘M’, ‘F’, ‘V’, ‘FEMALE’, ‘MALE’ |  
 |kansenStatuutEndDate |W3CDate |einddatum kansenstatuut (op kaartsysteem gelinkt aan uitpasnummer). Mag niet na het einde (31/12) van het volgende jaar. |  
 |emailPreference |String |‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’ (op kaartsysteem gelinkt aan uitpasnummer) |  
 |smsPreference |String |‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’ (op kaartsysteem gelinkt aan uitpasnummer) |  
 |schoolConsumerKey |String |ConsumerKey van de school van de pashouder |  
 |gsm |String |GSM nummer |  
 |moreInfo |String |een vrij tekstveld met informatie over deze pashouder |  
 |verified |boolean |true indien de e-id werd gebruikt bij update van de pashouder |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |  
_Authenticatie_  
_UserAccessToken van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf_

_Required permission_  
 In geval van balie medewerker: **PERMISSION\_PASSHOLDER - ACTION\_UPDATE** in een kaartsysteem waarvan de pashouder lid is.  
 In geval van uitpas eigenaar: Enkel data van de culturefeed user die ingelogd is, kan gewijzigd worden. In geval van de uitpas eigenaar kunnen enkel de volgende velden geupdate worden: emailPreference, email telephone, gsm, smsPreference.

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 ACTION\_NOT\_ALLOWED  
 MISSING\_REQUIRED\_FIELDS  
 UNKNOWN\_UITPASNUMBER  
 PARSE\_INVALID\_INSZ  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_BIGDECIMAL  
 PARSE\_INVALID\_GENDER  
 PARSE\_INVALID\_DATE  
 PARSE\_INVALID\_DATE\_OF\_BIRTH  
 PARSE\_INVALID\_POSTAL\_CODE  
 PARSE\_INVALID\_CITY\_NAME  
 INVALID\_DATE\_CONSTRAINTS (ongeldige kansenStatuutEndDate)  
 INVALID\_EMAIL\_ADDRESS (het email adres is niet geldig = bevat geen @ of '.') |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/passholder/1234567890116

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>The passholder has been updated.</message> </response>~~~<br>