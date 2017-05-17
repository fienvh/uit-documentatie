---
---

# Pagina image uploaden

``` {server}/page/{uid}/uploadImage ```

* Methode: POST
* Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina.

## Parameters

Parameter | Type |  Beschrijving | 
image | bytes |  De bytes van het eigenlijke afbeeldingsbestand. Ondersteunde formaten zijn: JPG, PNG en GIF. De maximum bestandsgrootte is 5 MB. Verplicht.

Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header Content-Type op multipart/form-data gezet moet worden. Het is aangeraden om eveneens de filename van de Content-Disposition in te stellen. Die naam zal gebruikt worden als bestandsnaam in de image URL.  

## Response

### Succes

HTTP 200 OK met een response body in XML formaat. Velden:

* code: status code string: IMAGE\_UPLOADED of ACTION\_FAILED
* uid: de uid van de pagina
