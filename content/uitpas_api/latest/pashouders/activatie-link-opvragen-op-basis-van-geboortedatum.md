---
---

# Activatie link opvragen op basis van geboortedatum

_Method_<br> GET

_URL_<br> {prefix}/uitpas/passholder/{uitpasNumber}/activation

Parameters:

 

|| | | | |
|dob| W3CDate| geboortedatum van de pashouder| x||

_Authenticatie_<br> _ConsumerRequest van de service consumer die deze request uitvoert_

_Required permission_<br> **PERMISSION\_PASSHOLDER - ACTION\_ACTIVATE**

**Response**

<u>Bij succes</u><br> HTTP 200 OK met een response body in XML formaat

 

|code| ACTION\_SUCCEEDED| |
|activationLink| link waarmee de gebruiker zijn uitpas kan activeren||

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> MISSING\_REQUIRED\_FIELDS<br> PARSE\_INVALID\_UITPASNUMBER<br> PARSE\_INVALID\_DATE<br> UNKNOWN\_UITPASNUMBER<br> ACTION\_FAILED<br> USER\_ALREADY\_ACTIVATED<br> INVALID\_DOB| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET {prefix}/uitpas/passholder/0930000000107/activation?dob=1979-07-15

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <code>ACTION_SUCCEEDED</code>     <message>activation link generated</message>     <activationLink>http://uitpas-acc.lodgon.com:8080/uitid/rest/uitpas/activate/0930000000107/98bdd8b3f4e48d4c</activationLink> </response>
~~~
