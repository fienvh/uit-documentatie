---
---
 17. Pagina image verwijderen
==

 
    {server}/page/{uid}/image/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina. ## Parameters <


|  Parameter Type Beschrijving Verplicht| 
  |    |    |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: IMAGE\_REMOVED of ACTION\_FAILED |  </tbody></


## Voorbeeld 

Request
POST {server}/page/51d441b9-e23d-4875-b517-fe2bbd7f185/image/remove

Response

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>IMAGE\_REMOVED</code>
<message>Image is successfully removed.</message>
</response> 