---
---

# Annulatie van verkoop van ticket adhv id

_Method_  
 POST

_URL_  
 {prefix}/uitpas/cultureevent/cancel/{ticketSaleId}

waarbij {ticketSaleId} de id van een ticket sale is

Parameters:

 |**Parameter** |**Type** |**Beschrijving** |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |  
_Authenticatie_  
_UserAccessToken van de balie medewerker die de actie uitvoert._

**Response**

<u>Bij succes</u>  
 HTTP 200 OK

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 UNKNOWN\_TICKET\_SALE |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/cancel/17006

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>ticket [17006] canceled</message> </response>~~~<br>