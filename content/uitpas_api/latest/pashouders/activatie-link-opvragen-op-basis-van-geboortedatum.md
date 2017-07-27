---
---

# Activatie link opvragen op basis van geboortedatum

_Method_  
 GET

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}/activation

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |dob |W3CDate |geboortedatum van de pashouder |x |  
_Authenticatie_  
_ConsumerRequest van de service consumer die deze request uitvoert_

_Required permission_  
**PERMISSION\_PASSHOLDER - ACTION\_ACTIVATE**

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met een response body in XML formaat

 |code |ACTION\_SUCCEEDED |  
 |activationLink |link waarmee de gebruiker zijn uitpas kan activeren |  
<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 MISSING\_REQUIRED\_FIELDS  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_DATE  
 UNKNOWN\_UITPASNUMBER  
 ACTION\_FAILED  
 USER\_ALREADY\_ACTIVATED  
 INVALID\_DOB |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

GET {prefix}/uitpas/passholder/0930000000107/activation?dob=1979-07-15

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>activation link generated</message>     <activationLink>http://uitpas-acc.lodgon.com:8080/uitid/rest/uitpas/activate/0930000000107/98bdd8b3f4e48d4c</activationLink> </response>~~~<br>