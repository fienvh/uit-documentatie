---
---

# Online registratie van verkoop van ticket

_Method_  
 POST

_URL_  
 {prefix}/uitpas/cultureevent/{eventCdbid}/buyonline/{uitpasNumber}

waarbij {eventCdbid} de cdbid van een event is  
 {uitpasNumber} de uitpas nummer van een pashouder of een groepspas

Parameters:

 |ticketSaleCouponId |Long |Ticket sale coupon Id die gebruikt moet worden bij de ticketsale |  
 |amountOfTickets |Integer |Aantal tickets. Deze parameter is verplicht voor een groepspas, maar mag niet gebruikt worden bij pashouders |  
 |priceClass |String |prijs klasse gebruikt bij de ticketsale |  
_Authenticatie_  
_ConsumerRequest met een consumer met rechten op ticketsales_

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 MISSING\_REQUIRED\_FIELDS  
 INVALID\_PARAMETERS  
 UNKNOWN\_EVENT\_CDBID  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_LONG  
 ACTION\_NOT\_ALLOWED  
 MAXIMUM\_REACHED  
 UNKNOWN\_UITPASNUMBER  
 INVALID\_CARD\_STATUS  
 TICKETSALE\_NOT\_ALLOWED\_FREE\_EVENT  
 NO\_VALID\_DISTRIBUTION\_KEY  
 UNKNOWN\_PRICE\_CLASS |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/283e8449-4ce8-44f9-aa87-c7e9395be025/buyonline/1234567890113

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <ticketSale> 	<creationDate>2011-12-02T12:23:35.636+01:00</creationDate> 	<id>7</id> 	<price>45.0</price> </ticketSale>~~~<br>