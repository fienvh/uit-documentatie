---
---

# E-mailadres opnieuw bevestigen

Met deze call kan de Service Consumer vragen de registratieconfirmatiemail opnieuw te verzenden naar de user.

	{server}/user/{ID}/resend_mbox_confirmation

waarbij {ID} de UiTiD ID van de User is

* Methode: ```POST```
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| depiction | ```bytes``` | De bytes van het eigenlijke afbeeldingsbestand. Ondersteunde formaten zijn: JPG, PNG en GIF. De maximum bestandsgrootte is 2 MB. | Verplicht |

Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header ```Content-Type```  ```multipart/form-data``` moet zijn. We raden aan om de filename van de ```Content-Disposition``` in te stellen. Deze naam zal gebruikt worden als bestandsnaam in de URL van de image.

## Response

HTTP 200 OK met een response body in XML formaat

* code: status code string: ```ConfirmationEmailResent``` of ```MboxAlreadyVerified``` als het e-mailadres van de User al geverifieerd is
* uid: de ID van de User
