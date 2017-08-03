---
---

# Annulatie van verkoop van ticket

_Method_<br> POST

_URL_<br> {prefix}/uitpas/cultureevent/{eventCdbid}/cancel/{uitpasNumber}

waarbij {eventCdbid} de cdbid van een event is<br> {uitpasNumber} de uitpas nummer van een pashouder of een groepspas

Parameters:

 

|| | | |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3||

_Authenticatie_<br> _UserAccessToken van de balie medewerker die de actie uitvoert._

**Response**

<u>Bij succes</u><br> HTTP 200 OK

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> UNKNOWN\_EVENT\_CDBID<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_TICKET\_SALE<br> UNKNOWN\_UITPASNUMBER| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/283e8449-4ce8-44f9-aa87-c7e9395be025/cancel/1234567890113

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>1 ticket canceled for 0930000150316 for event 0b5e01aa-3dd3-486f-a19a-faa73a6e8a19</message> </response>
~~~
