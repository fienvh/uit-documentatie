---
---

# Financieel rapport aanmaken

_Method_<br> POST

_URL_<br> {prefix}/uitpas/report/financialoverview/organiser

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| startDate| W3C Date| Begindatum van de ticket sales die in het rapport komen. De datum wordt omgezet naar het begin van de dag.| x| |
|endDate| W3C Date| Einddatum van de ticket sales die in het rapport komen. De datum wordt omgezet naar het einde van de dag.| x||

_Authenticatie_<br> User access token van de balie medewerker die de actie uitvoert

_Optional permission_<br> De volgende permissie kan aan een groep worden toegekend om de volledige namen in het rapport weer te geven: “namen weergeven in financiële rapporten”

**Response**

<u>Bij succes</u><br> HTTP 200 met een response body in XML formaat:

 

|code| ACTION\_SUCCEEDED| |
|message| Export in progress.| |
|resource| URL om de status van het gestarte rapport op te vragen: {prefix}/uitpas/report/financialoverview/organiser/{REPORT\_ID}/status||

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> ACCESS\_DENIED<br> MISSING\_REQUIRED\_FIELDS<br> PARSE\_INVALID\_DATE| |
|message| Beschrijving van de fout||

_Voorbeeld request_

POST {prefix}/uitpas/report/financialoverview/organiser<br> balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7&startDate=2014-08-01&endDate=2014-08-31

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>Export in progress.</message>     <resource>/uitpas/report/financialoverview/organiser/19/status?consumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7</resource> + </response>
~~~
