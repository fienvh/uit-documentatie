---
---
 <a id="5" name="5"></a>5. Leden van een pagina verwijderen
===========================================================

 
    <pre class="rteleft"> {server}/page/{uid}/member/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
 userId |   String |   uid van CultureFeed gebruiker |   x |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">a4970266-4bae-4f61-a8c4-600ddcd2edd6</span>**/member/remove  
**<span style="font-size:12px;"><span style="font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">userId=bb3d5877-7207-4c9b-a0d7-5e5c797d0f13</span></span>**

Response

<div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <code>ACTION\_SUCCEEDED</code><div> <message>Lidmaatschap werd verwijderd</message><div> </response>