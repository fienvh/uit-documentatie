---
---

# Block uitpas

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/block/{uitpasNumber}

Parameters:

 |**Naam** |**Type** |**Omschrijving** |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |  
_Authenticatie_  
_UserAccessToken van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf_

_Required permission_  
 In geval van balie medewerker: **PERMISSION\_PASSHOLDER - ACTION\_BLOCK** in een kaartsysteem waarvan de pashouder lid is.  
 In geval van uitpas eigenaar: Enkel data van de UiTid user die ingelogd is, kan gewijzigd worden.

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 UNKNOWN\_UITPASNUMBER  
 PARSE\_INVALID\_UITPASNUMBER  
 INVALID\_CARD\_STATUS (bijv. de kaart was reeds geblokkeerd) |  
 |message |Beschrijving van de fout |  
_Voorbeeld request_

POST {prefix}/uitpas/passholder/block/1234567890116

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>The uitpas has been blocked.</message> </response>~~~<br>