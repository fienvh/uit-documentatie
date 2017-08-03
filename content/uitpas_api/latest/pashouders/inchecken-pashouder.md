---
---

# Inchecken pashouder

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/checkin

Parameters:

 

|| | | | |
|cdbid| String| cdbid van event| x| |
|uitpasNumber| String| uitpas nummer 13 cijfers (i.e. zonder ISO-code)| x (zie opmerking)| |
|chipNumber| String| NFC card chip number| x (zie opmerking)| |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| points| Integer| Totaal aantal punten van de gebruiker.||

HTTP 200 OK

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat.


~~~xml
 HTTP Status 400 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>MAXIMUM_REACHED</code>     <message>Punt al gespaard (max. 1 / Week)</message>     <points>12</points> </response> 
~~~
 

|code| ErrorCode van de fout:<br> PASSHOLDER\_NO\_ACTIVE\_CARDSYSTEMS<br> UNKNOWN\_EVENT\_CDBID<br> UNKOWN\_UITPASNUMBER<br> UNKOWN\_CHIPNUMBER<br> MISSING\_REQUIRED\_FIELDS<br> INVALID\_CARD\_STATUS<br> ACTION\_NOT\_ALLOWED<br> ACTION\_FAILED<br> MAXIMUM\_REACHED<br> PARSE\_INVALID\_UITPASNUMBER<br> CHECKIN\_CURRENTLY\_NOT\_ALLOWED| |
|message| Beschrijving van de fout| |
|points| Totaal aantal punten van de gebruiker.| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

