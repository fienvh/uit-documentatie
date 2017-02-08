---
---
 <a id="16" name="16"></a>16. Tijdslijn van een pagina ophalen
==============================================================

 
    <pre class="rteleft"> {server}/page/{uid}/timeline waarbij {uid} de identificatie van de pagina is  

 * Methode:   
 GET  * Authenticatie:   
<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">UserAccessToken van de gebruiker die het opvragen uitvoert</span>  
  
<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">óf</span>  
  
<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">Consumer request van de Service Consumer die het opvragen uitvoert</span> ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
 dateFrom |   W3C Date |   startdatum van de tijdslijn |    |  
 type |   List<Integer> |   type van activiteiten die getoond worden in de tijdslijn |    |  </tbody></


## Response
  
  
### Succes
  
  
<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">HTTP 200 OK met een response body in XML formaat.</span>  ### Fout
 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


<td style="vertical-align: top;"> HTTP 404 Not found |  <td style="vertical-align: top;"> De pagina met de opgegeven {uid} wordt niet gevonden  
  | </tbody></


## Voorbeeld 

Request
  
 GET {server}/page/51d441b9-e23d-4875-b517-fe2bbd7f185f/timeline

Response

<div><div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <total>8</total><div> <activities><div> <activity><div> <type>3</type><div> <contentType>event</contentType><div> <createdVia>uitpas.be</createdVia><div> <creationDate>2013-04-09T13:19Z</creationDate><div> <id>70cea3b5-68d0-422b-9732-ae041e266643</id><div> <nodeID>3a8db428-c70b-45d2-9c27-b5c114d930ab</nodeID><div> <nodeTitle>info: de Antwerpse barok</nodeTitle><div> <onBehalfOf>51d441b9-e23d-4875-b517-fe2bbd7f185f</onBehalfOf><div> <onBehalfOfName>AB ellen</onBehalfOfName><div> <points>0</points><div> <private>false</private><div> <userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId><div> </activity><div> <activity><div> <type>17</type><div> <contentType>page</contentType><div> <createdVia>uitpas.be</createdVia><div> <creationDate>2013-03-25T09:32Z</creationDate><div> <id>1a30c24b-e400-42d0-93e9-b3b4122f0244</id><div> <nodeID>51d441b9-e23d-4875-b517-fe2bbd7f185f</nodeID><div> <nodeTitle>AB ellen</nodeTitle><div> <points>0</points><div> <private>false</private><div> <userId>117752b6-04cd-4b0b-96f7-7020165ad63a</userId><div> </activity><div> <activity><div> <type>7</type><div> <contentType>page</contentType><div> <createdVia>uitpas.be</createdVia><div> <creationDate>2013-03-15T16:14Z</creationDate><div> <id>d16da5b0-fde4-42bc-bd3c-4f99abe41992</id><div> <nodeID>51d441b9-e23d-4875-b517-fe2bbd7f185f</nodeID><div> <nodeTitle>AB ellen</nodeTitle><div> <points>0</points><div> <private>false</private><div> <userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId><div> </activity><div> ...<div> </activities><div> </response><div> <div> <a id="removeImage" name="removeImage"></a>