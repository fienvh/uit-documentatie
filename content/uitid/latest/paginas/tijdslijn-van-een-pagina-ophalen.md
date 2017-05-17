---
---
 <a id="16" name="16"></a>16. Tijdslijn van een pagina ophalen
==

 
    {server}/page/{uid}/timeline waarbij {uid} de identificatie van de pagina is  

 * Methode:   
 GET  * Authenticatie:   
UserAccessToken van de gebruiker die het opvragen uitvoert  
  
óf  
  
Consumer request van de Service Consumer die het opvragen uitvoert ## Parameters <


|  Parameter Type Beschrijving Verplicht| 
 dateFrom |   W3C Date |   startdatum van de tijdslijn |    |  
 type |   List<Integer> |   type van activiteiten die getoond worden in de tijdslijn |    |  </tbody></


## Response
  
  
### Succes
  
  
HTTP 200 OK met een response body in XML formaat.  ### Fout
 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


<td style="vertical-align: top;"> HTTP 404 Not found |  <td style="vertical-align: top;"> De pagina met de opgegeven {uid} wordt niet gevonden  
  | </tbody></


## Voorbeeld 

Request
  
 GET {server}/page/51d441b9-e23d-4875-b517-fe2bbd7f185f/timeline

Response

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<total>8</total>
<activities>
<activity>
<type>3</type>
<contentType>event</contentType>
<createdVia>uitpas.be</createdVia>
<creationDate>2013-04-09T13:19Z</creationDate>
<id>70cea3b5-68d0-422b-9732-ae041e266643</id>
<nodeID>3a8db428-c70b-45d2-9c27-b5c114d930ab</nodeID>
<nodeTitle>info: de Antwerpse barok</nodeTitle>
<onBehalfOf>51d441b9-e23d-4875-b517-fe2bbd7f185f</onBehalfOf>
<onBehalfOfName>AB ellen</onBehalfOfName>
<points>0</points>
<private>false</private>
<userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId>
</activity>
<activity>
<type>17</type>
<contentType>page</contentType>
<createdVia>uitpas.be</createdVia>
<creationDate>2013-03-25T09:32Z</creationDate>
<id>1a30c24b-e400-42d0-93e9-b3b4122f0244</id>
<nodeID>51d441b9-e23d-4875-b517-fe2bbd7f185f</nodeID>
<nodeTitle>AB ellen</nodeTitle>
<points>0</points>
<private>false</private>
<userId>117752b6-04cd-4b0b-96f7-7020165ad63a</userId>
</activity>
<activity>
<type>7</type>
<contentType>page</contentType>
<createdVia>uitpas.be</createdVia>
<creationDate>2013-03-15T16:14Z</creationDate>
<id>d16da5b0-fde4-42bc-bd3c-4f99abe41992</id>
<nodeID>51d441b9-e23d-4875-b517-fe2bbd7f185f</nodeID>
<nodeTitle>AB ellen</nodeTitle>
<points>0</points>
<private>false</private>
<userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId>
</activity> ... </activities>
</response>
<a id="removeImage" name="removeImage"></a>