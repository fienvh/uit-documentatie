---
---

# Activatie e-mail opnieuw versturen

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}/resend\_activation\_mail

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ACTION\_SUCCEEDED |  
 |message |Informatie over deze actie |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

 |code |ErrorCode van de fout:  
 UNKNOWN\_UITPASNUMBER  
 PARSE\_INVALID\_UITPASNUMBER |  
 |message |Beschrijving van de fout |  
_Voorbeeld request_  
 POST {prefix}/uitid/rest/uitpas/passholder/0930012345607/resend\_activation\_mail

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>mail resent to an.wouters@mailinator.com</message> </response>~~~<br>