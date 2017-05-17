---
---
 <a id="15" name="15"></a>15. Lidmaatschap van lid aanpassen


 
    {server}/page/{uid}/member/update 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken. ## Parameters <


|  Parameter Type Beschrijving Verplicht| 
 userId |   String |   uid van CultureFeed gebruikers |   x |  
 relation |   String |   relatie van het lidmaatschap |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED, PAGE\_MEMBERSHIP\_NOT\_FOUND | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/c5f2384d-4b23-4348-93c2-0593ab553673/member/update

 userId=17748f38-ea59-4b73-99cd-535cde1b3638& relation=MedewerkerResponse

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>ACTION\_SUCCEEDED</code>
<message>Lidmaatschap werd aangepast</message>
</response> 