---
---

# Ophalen pashouder punten

_Method_<br> GET

_URL_<br> {prefix}/uitpas/enduser/{UITPASNUMBER}

Parameters:

geen

_Authenticatie_<br> _Consumer request_

_Required permission_<br> De consumer die de actie uitvoert moet "pashouder punten ophalen" rechten hebben.

**Response**

 

|code| Statuscode van de request:<br> Mogelijke codes:<br> ACTION\_SUCCEEDED<br> GROUPPAS\_NOT\_ALLOWED<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_UITPASNUMBER<br> INVALID\_CARD\_STATUS\_BLOCKED<br> INVALID\_CARD\_STATUS\_DELETED<br> INVALID\_CARD\_STATUS| |
|points| Punten van de pashouder (enkel bij code ACTION\_SUCCEEDED)||

_Voorbeeld request_

GET {prefix}/uitpas/enduser/0930056878802

_Voorbeeld response_


~~~xml
 {   "points": 4,   "code": "ACTION_SUCCEEDED" }
~~~
