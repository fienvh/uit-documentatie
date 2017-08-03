---
---

# Update pashouder

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/{uitpasNumber}

Parameters:

 

|| | | |
|| | String| Box| |
|postalCode| String| Postcode| |
|city| String| gemeente pashouder. indien geldige deelgemeente opgegeven wordt, wordt deze automatisch omgezet naar de hoofdgemeente. de postcode blijft behouden.| |
|telephone| String| Telefoonnummer| |
|nationality| String| Nationaliteit| |
|placeOfBirth| String| Geboorteplaats| |
|gender| String| Geslacht. Mogelijke waarden: ‘M’, ‘F’, ‘V’, ‘FEMALE’, ‘MALE’| |
|kansenStatuutEndDate| W3CDate| einddatum kansenstatuut (op kaartsysteem gelinkt aan uitpasnummer). Mag niet na het einde (31/12) van het volgende jaar.| |
|emailPreference| String| ‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’ (op kaartsysteem gelinkt aan uitpasnummer)| |
|smsPreference| String| ‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’ (op kaartsysteem gelinkt aan uitpasnummer)| |
|schoolConsumerKey| String| ConsumerKey van de school van de pashouder| |
|gsm| String| GSM nummer| |
|moreInfo| String| een vrij tekstveld met informatie over deze pashouder| |
|verified| boolean| true indien de e-id werd gebruikt bij update van de pashouder| |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3||

_Authenticatie_<br> _UserAccessToken van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf_

_Required permission_<br> In geval van balie medewerker: **PERMISSION\_PASSHOLDER - ACTION\_UPDATE** in een kaartsysteem waarvan de pashouder lid is.<br> In geval van uitpas eigenaar: Enkel data van de culturefeed user die ingelogd is, kan gewijzigd worden. In geval van de uitpas eigenaar kunnen enkel de volgende velden geupdate worden: emailPreference, email telephone, gsm, smsPreference.

**Response**

<u>Bij succes</u><br> HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> ACTION\_NOT\_ALLOWED<br> MISSING\_REQUIRED\_FIELDS<br> UNKNOWN\_UITPASNUMBER<br> PARSE\_INVALID\_INSZ<br> PARSE\_INVALID\_UITPASNUMBER<br> PARSE\_INVALID\_BIGDECIMAL<br> PARSE\_INVALID\_GENDER<br> PARSE\_INVALID\_DATE<br> PARSE\_INVALID\_DATE\_OF\_BIRTH<br> PARSE\_INVALID\_POSTAL\_CODE<br> PARSE\_INVALID\_CITY\_NAME<br> INVALID\_DATE\_CONSTRAINTS (ongeldige kansenStatuutEndDate)<br> INVALID\_EMAIL\_ADDRESS (het email adres is niet geldig = bevat geen @ of '.')| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/passholder/1234567890116

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>The passholder has been updated.</message> </response>
~~~
