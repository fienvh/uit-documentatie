---
---
 <a id="10" name="10"></a>10. Lijst van beheerders, leden en volgers ophalen
============================================================================

 
    <pre class="rteleft"> {server}/page/{uid}/user/list 

 * Methode:   
 GET  Parameters: <


 **Parameter** |   **Type** |   **Beschrijving** |   **Verplicht** |  
 role |   List<PageRole> |  Mogelijke waarden: ADMIN, MEMBER, FOLLOWER. Wanneer geen waarden worden meegegeven, worden alle rollen opgehaald.

  |    |  </tbody></


 Consumer request of UserAccessToken.  
## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 pageRole |   ADMIN of MEMBER |  
 relation |   Omschrijving van het lidmaatschap |  
 validated |   true indien dit om een valideerd lidmaatschap gaat |  
 user.id |   uid van de CultureFeed gebruiker |  
 user.nick |   nick van de CultureFeed gebruiker |  
 user.depiction |   profielfoto van de CultureFeed gebruiker |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |    | </tbody></


## Voorbeeld 

Request


**<span style="font-size: 13px; font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">GET {prefix}/page/a4970266-4bae-4f61-a8c4-600ddcd2edd6/user/list</span>**

**Response**

<div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <pageMemberships><div> <pageMembership><div> <pageRole>ADMIN</pageRole><div> <user><div> <rdf:id>a7e8c74e-f952-4288-8a26-b0b373c6c701</rdf:id><div> <foaf:nick>anwouters</foaf:nick><div> <foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>><div> </user><div> <creationDate>2013-03-01T13:35:51+01:00</creationDate><div> </pageMembership><div> <pageMembership><div> <relation>Voorzitter</relation><div> <pageRole>ADMIN</pageRole><div> <validated>true</validated><div> <user><div> <rdf:id>cbf80d2f-ff66-4cee-9cc9-b872932f9481</rdf:id><div> <foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>><div> </user><div> <creationDate>2013-03-04T10:05:06+01:00</creationDate><div> </pageMembership><div> <pageMembership><div> <relation>Testgebruiker</relation><div> <pageRole>MEMBER</pageRole><div> <user><div> <rdf:id>7c713881-ac7e-4bfb-8668-8046fdbb642b</rdf:id><div> <foaf:nick>liesledenaar</foaf:nick><div> <foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>><div> </user><div> <creationDate>2013-03-04T10:35:59+01:00</creationDate><div> </pageMembership><div> </pageMemberships><div> <followers><div> <follower><div> <rdf:id>c5854241-4711-4f96-8a8a-4d6bb38fbaa4</rdf:id><div> <foaf:nick>nele</foaf:nick><div> <foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>><div> </follower><div> </followers><div> </response>