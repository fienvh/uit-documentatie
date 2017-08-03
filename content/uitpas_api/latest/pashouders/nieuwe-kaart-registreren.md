---
---

# Nieuwe kaart registreren

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/newCard

Parameters:

 

|| | | | |
|uid| String| identificatie van de pashouder| x| |
|reason| ‘LOSS\_THEFT’, ‘REMOVAL’, ‘LOSS\_KANSENSTATUUT’, ‘OBTAIN\_KANSENSTATUUT’, ‘CARD\_UPGRADE’ or ‘EXTRA\_CARD’| reden voor registratie van een nieuwe kaart.| x| |
|uitpasNumber| String| uitpasnummer van nieuwe kaart| x| |
|voucherNumber| String| vouchernummer voor registratie van nieuwe kaart| balieConsumerKey| String| ConsumerKey van de balie die de nieuwe kaart registreert| kansenStatuutEndDate| W3CDate| einddatum kansenstatuut, verplicht indien reason ‘OBTAIN\_KANSENSTATUUT’. Mag niet na het einde (31/12) van het volgende jaar.| code| ErrorCode van de fout:<br> MISSING\_REQUIRED\_FIELDS<br> PARSE\_INVALID\_UITPASNUMBER<br> PARSE\_INVALID\_VOUCHERNUMBER<br> PARSE\_INVALID\_DATE<br> INVALID\_DATE\_CONSTRAINTS (ongeldige kansenStatuutEndDate)<br> UNKNOWN\_VOUCHER (geen voucher gevonden met opgegeven nummer)<br> UNKNOWN\_PASSHOLDER\_UID<br> UNKNOWN\_CARD (geen kaart gevonden met opgegeven nummer)<br> INVALID\_CARD (Uitpas is niet verdeeld aan balie of Uitpasnummer van een kansenpas verplicht indien pashouder met kansenstatuut of Pashouder met kansenstatuut verplicht indien uitpasnummer van kansenpas)<br> INVALID\_CARD\_STATUS (kaart was niet in LOCAL\_STOCK)<br> INVALID\_VOUCHER\_STATUS (voucher is reeds verzilverd)| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/passholder/newCard uitpasNumber=0930000000107 uid=8d80e3b6-80a2-4e2f-8bbb-cd2a72809d77 reason=LOSS\_KANSENSTATUUT balieConsumerKey=28808C2F-0DB2-D2CF-F508ECB994D2505F

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<message>8d80e3b6-80a2-4e2f-8bbb-cd2a72809d77</message> 	<resource>/uitpas/passholder/0930000000107</resource> </response>
~~~
