---
---

# Verwijderen van lidmaatschap

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/membership/delete

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |uid |String |uid van de pashouder |x |  
 |associationId |Long |identificatie van de vereniging |x |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 ACTION\_FAILED  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 UNKNOWN\_PASSHOLDER\_UID  
 PARSE\_INVALID\_LONG  
 UNKNOWN\_ASSOCIATION\_ID  
 MISSING\_REQUIRED\_FIELDS  
 INVALID\_PARAMETERS  
 PARSE\_INVALID\_DATE |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_  
 POST {prefix}/uitpas/passholder/membership/delete

uid=1af67b95-6f68-4a82-96af-7539681c28ce&associationId=1

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>Lidmaatschap werd succesvol verwijderd.</message> </response>~~~<br>