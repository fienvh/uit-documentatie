---
---

# Kaartsysteem specifieke pashouder gegevens aanpassen

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/{uid}/{cardSystemId}

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |emailPreference |String |‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’ |smsPreference |String |‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’ |kansenStatuutEndDate |String |Datum in W3C formaat, mag enkel meegegeven worden in de context van een baliemedewerker. Mag niet na het einde (31/12) van het volgende jaar. |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 UNKNOWN\_PASSHOLDER\_UID  
 UNKNOWN\_CARD\_SYSTEM  
 INVALID\_DATE\_CONSTRAINTS (bijv. indien de einddatum van het kansenstatuut na het einde van het volgende jaar)  
 ACTION\_NOT\_ALLOWED |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST /uitpas/passholder/0b58caf7-5663-4058-99b3-d1a982d260c9/3

emailPreference=NO\_MAILS  
 smsPreference=NO\_SMS  
 balieConsumerKey=5c9c73d3-e82f-e7b3-44161e6e3802e64f

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>De pashouder gegevens werden aangepast.</message> </response>~~~<br>