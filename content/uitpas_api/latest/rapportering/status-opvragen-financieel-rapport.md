---
---

# Status opvragen financieel rapport

_Method_  
 GET

_URL_  
 {prefix}/uitpas/report/financialoverview/organiser/{statusReportId}/status  
 waarbij {statusReportId} de id is van het status rapport

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |balieConsumerKey |String |ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |message |wanneer generatie nog bezig is: Export in progress.  
 wanneer generatie klaar is: Export completed. |  
 |resource |wanneer generatie nog bezig is: URL om de status van het gestarte rapport op te vragen: {prefix}/uitpas/report/financialoverview/organiser/{REPORT\_ID}/status  
 wanneer generatie klaar is: URL om het rapport te downloaden: {prefix}/uitpas/report/financialoverview/organiser/{REPORT\_ID}/download  
 Indien de balieConsumerKey werd meegegeven, zal deze ook in de resource url gezet worden. |  
<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 ACCESS\_DENIED  
 UNKNOWN\_REPORT\_ID  
 ACTION\_FAILED |  
 |message |Beschrijving van de fout |  
_Voorbeeld request_

GET {prefix}/uitpas/report/financialoverview/organiser/19/status?balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>Export completed.</message>     <resource>/uitpas/report/financialoverview/organiser/19/download?consumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7</resource> </response>~~~<br>