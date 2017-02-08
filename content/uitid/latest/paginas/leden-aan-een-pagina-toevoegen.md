---
---
 <a id="4" name="4"></a>4. Leden aan een pagina toevoegen
=========================================================

 
    <pre class="rteleft"> {server}/page/{uid}/member/add 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
 userId |   String |   uid van CultureFeed gebruikers |   x |  
 relation |   String |   relatie van het lidmaatschap |    |  
 activityPrivate |   Boolean |   zichtbaarheid van activity voor lidmaatschap, default true |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/c5f2384d-4b23-4348-93c2-0593ab553673/member/add

<div> userId=17748f38-ea59-4b73-99cd-535cde1b3638&<div> relation=Voorzitter&<div> activityPrivate=falseResponse

<div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <code>ACTION\_SUCCEEDED</code><div> <message>Lidmaatschap werd toegevoegd</message><div> </response>