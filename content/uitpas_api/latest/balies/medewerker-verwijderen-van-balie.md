---
---

# Medewerker verwijderen van balie

Verwijder een medewerker van een balie

_Method_  
 POST

_URL_  
 {prefix}/uitpas/balie/removeMember

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |balieConsumerKey |String |ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |uid |String |UID van de CultureFeed gebruiker. |x |  
_Authenticatie_  
_User access token van de Balie Admin die de actie uitvoert_

_Required permission_  
 De gebruiker die de actie uitvoert moet Admin zijn van de opgegeven balie.

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 UNKNOWN\_USER  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 ACTION\_NOT\_ALLOWED |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  