---
---

# Upload picture

_Method_<br> POST

_Consumes_<br> multipart/form-data

_URL_<br> {prefix}/uitpas/passholder/{uid}/uploadPicture

waarbij {uid} de uid van de pashouder

Parameters:

 

|**Naam**| **Type**| **Omschrijving**| **Verplicht**| |
|picture| bytes| de bytes van de afbeelding| x| |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> ACTION\_FAILED<br> UNKNOWN\_PASSHOLDER\_UID| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

POST {prefix}/uitpas/passholder/0279cf39-6b91-467a-a5fa-acdc03ad0111/uploadPicture