---
---

# Download financieel rapport

_Method_<br> GET

_URL_<br> {prefix}/uitpas/report/financialoverview/organiser/{statusReportId}/download<br> waarbij {statusReportId} de id is van het status rapport

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| Content-Disposition| attachment; filename=financialOverview\_{BALIE\_NAME}\_{COMPLETION\_DATE}.zip||

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> ACCESS\_DENIED<br> UNKNOWN\_REPORT\_ID<br> INVALID\_REPORT\_STATUS| |
|message| Beschrijving van de fout||

_Voorbeeld request_

GET {prefix}/uitpas/report/financialoverview/organiser/19/download?balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7

_Voorbeeld response_

Een zip bestand dat een excel bestand bevat met het financieel rapport.