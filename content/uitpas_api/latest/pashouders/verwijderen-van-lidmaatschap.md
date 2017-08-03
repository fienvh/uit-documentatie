---
---

# Verwijderen van lidmaatschap

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/membership/delete

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|uid| String| uid van de pashouder| x| |
|associationId| Long| identificatie van de vereniging| x| |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> ACTION\_FAILED<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> UNKNOWN\_PASSHOLDER\_UID<br> PARSE\_INVALID\_LONG<br> UNKNOWN\_ASSOCIATION\_ID<br> MISSING\_REQUIRED\_FIELDS<br> INVALID\_PARAMETERS<br> PARSE\_INVALID\_DATE| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_<br> POST {prefix}/uitpas/passholder/membership/delete

uid=1af67b95-6f68-4a82-96af-7539681c28ce&associationId=1

_Voorbeeld response_<br>


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>Lidmaatschap werd succesvol verwijderd.</message> </response>
~~~
