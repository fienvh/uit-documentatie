---
---

# Online annulatie van verkoop van ticket adhv id

_Method_<br> POST

_URL_<br> {prefix}/uitpas/cultureevent/cancelonline/{ticketSaleId}

waarbij {ticketSaleId} de id van een ticket sale is

Parameters:

Geen

_Authenticatie_<br> _ConsumerRequest met een consumer met rechten op ticketsales_

**Response**

<u>Bij succes</u><br> HTTP 200 OK

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> UNKNOWN\_TICKET\_SALE| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/cancelonline/17006

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>ticket [17006] canceled</message> </response>
~~~
