---
---
 <a id="14" name="14"></a>14. Lidmaatschap van beheerder aanpassen


 
    {server}/page/{uid}/admin/update waarbij {uid} de identificatie van de pagina is  

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken waarbij de gebruiker beheerder van de pagina is. ## Parameters <


|  Parameter Type Beschrijving Verplicht| 
 userId |   String |   uid van CultureFeed gebruiker |   x |  
 relation |   String |   Beschrijving van het lidmaatschap |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, ACTION\_NOT\_ALLOWED, USER\_NOT\_FOUND, PAGE\_MEMBERSHIP\_NOT\_FOUND | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/**a4970266-4bae-4f61-a8c4-600ddcd2edd6**/admin/update  
**<span style="font-size: 12px;"><span style="font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">userId=bb3d5877-7207-4c9b-a0d7-5e5c797d0f13**  
**<span style="font-size: 12px;"><span style="font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">&relation=Voorzitter**

  Response <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>ACTION\_SUCCEEDED</code>
<message>Lidmaatschap werd aangepast</message>
</response>  