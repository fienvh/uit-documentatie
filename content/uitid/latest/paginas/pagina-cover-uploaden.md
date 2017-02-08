---
---
 <a id="12" name="12"></a>12. Pagina cover uploaden
===================================================

 
    <pre class="rteleft"> {server}/page/{uid}/uploadCover 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
image

  |   bytes |  De bytes van het eigenlijke afbeeldingsbestand. Ondersteunde formaten zijn: JPG, PNG en GIF

De maximum bestandsgrootte is 5 MB.

  |   X |  </tbody></


  
<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header Content-Type op multipart/form-data gezet moet worden. Het is aangeraden om eveneens de filename van de Content-Disposition in te stellen. Die naam zal gebruikt worden als bestandsnaam in de image URL.</span>  
## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: IMAGE\_UPLOADED of ACTION\_FAILED |  
 uid |   De uid van de pagina |  </tbody></


## Voorbeeld 

Request
Response

