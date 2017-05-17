---
---
 <a id="removevalidatedadmin" name="removevalidatedadmin"></a>23. Verwijderen van validated admin van een pagina
=

 
    {server}/page/{uid}/validatedadmin/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken.  
## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, PAGE\_NOT\_FOUND, SCHOOL\_NOT\_FOUND, USER\_NOT\_VALIDATED\_ADMIN, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/c5f2384d-4b23-4348-93c2-0593ab553673/validatedadmin/remove

Response

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>ACTION\_SUCCEEDED</code>
<message>Lidmaatschap werd aangepast.</message>
</response>  