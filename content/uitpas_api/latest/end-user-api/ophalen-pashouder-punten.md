---
---

# Ophalen pashouder punten

_Method_  
 GET

_URL_  
 {prefix}/uitpas/enduser/{UITPASNUMBER}

Parameters:

geen

_Authenticatie_  
_Consumer request_

_Required permission_  
 De consumer die de actie uitvoert moet "pashouder punten ophalen" rechten hebben.

**Response**

 |code |Statuscode van de request:  
 Mogelijke codes:  
 ACTION\_SUCCEEDED  
 GROUPPAS\_NOT\_ALLOWED  
 PARSE\_INVALID\_UITPASNUMBER  
 UNKNOWN\_UITPASNUMBER  
 INVALID\_CARD\_STATUS\_BLOCKED  
 INVALID\_CARD\_STATUS\_DELETED  
 INVALID\_CARD\_STATUS |  
 |points |Punten van de pashouder (enkel bij code ACTION\_SUCCEEDED) |  
_Voorbeeld request_

GET {prefix}/uitpas/enduser/0930056878802

_Voorbeeld response_

~~~
 {   "points": 4,   "code": "ACTION_SUCCEEDED" }~~~<br>