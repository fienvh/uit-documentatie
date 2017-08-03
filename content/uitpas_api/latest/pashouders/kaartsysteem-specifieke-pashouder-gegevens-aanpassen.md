---
---

# Kaartsysteem specifieke pashouder gegevens aanpassen

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/{uid}/{cardSystemId}

Parameters:

 

|| | | | |
|emailPreference| String| ‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’| smsPreference| String| ‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’| kansenStatuutEndDate| String| Datum in W3C formaat, mag enkel meegegeven worden in de context van een baliemedewerker. Mag niet na het einde (31/12) van het volgende jaar.| balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> UNKNOWN\_PASSHOLDER\_UID<br> UNKNOWN\_CARD\_SYSTEM<br> INVALID\_DATE\_CONSTRAINTS (bijv. indien de einddatum van het kansenstatuut na het einde van het volgende jaar)<br> ACTION\_NOT\_ALLOWED| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST /uitpas/passholder/0b58caf7-5663-4058-99b3-d1a982d260c9/3

emailPreference=NO\_MAILS<br> smsPreference=NO\_SMS<br> balieConsumerKey=5c9c73d3-e82f-e7b3-44161e6e3802e64f

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>De pashouder gegevens werden aangepast.</message> </response>
~~~
