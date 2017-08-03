---
---

# Registreren, vernieuwen en heractiveren van lidmaatschap

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/membership

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|uid| String| uid van de pashouder| x| |
|associationId| Long| identificatie van de vereniging| x| |
|endDate| W3CDate| einddatum lidmaatschap organisatie| balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> ACTION\_FAILED<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> UNKNOWN\_PASSHOLDER\_UID<br> UNKNOWN\_ASSOCIATION\_ID<br> MISSING\_REQUIRED\_FIELDS<br> INVALID\_PARAMETERS (bijv. geen einddatum gegeven indien verplicht)<br> PARSE\_INVALID\_DATE<br> PARSE\_INVALID\_LONG<br> MEMBERSHIP\_NOT\_POSSIBLE\_AGE\_CONSTRAINT<br> ACTION\_NOT\_ALLOWED (bijv. indien lidmaatschap niet verlengd kan worden)| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_<br> POST {prefix}/uitpas/passholder/membership

uid=1af67b95-6f68-4a82-96af-7539681c28ce&associationId=1&endDate=2012-12-31

_Voorbeeld response_<br>


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_SUCCEEDED</code> 	<message>Lidmaatschap werd succesvol aangemaakt.</message> </response>
~~~
