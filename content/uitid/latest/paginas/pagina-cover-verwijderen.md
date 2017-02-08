---
---
 <a id="removeCover" name="removeCover"></a>18. Pagina cover verwijderen
========================================================================

 
    <pre class="rteleft"> {server}/page/{uid}/cover/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
  |    |    |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: COVER\_REMOVED of ACTION\_FAILED |  </tbody></


## Voorbeeld 

Request
POST {server}/page/51d441b9-e23d-4875-b517-fe2bbd7f185/cover/remove

Response

<div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <code>COVER\_REMOVED</code><div> <message>Cover is successfully removed.</message><div> </response><div> <div> <a id="userPageNotifications" name="userPageNotifications"></a>19. User notificaties mbt pagina ophalen
========================================================================================================

 
    <pre style="background-color: rgb(238, 238, 238); padding: 0.75em 1.5em; border: 1px solid rgb(221, 221, 221); color: rgb(0, 0, 0); line-height: 19.1875px;"> {server}/page/{ID}/notifications waarbij {ID} de culturefeed ID van de Page is 

* Methode:   
 GET

* Authenticatie:   
 UserAccessToken van de gebruiker die zijn notificaties mbt tot de gegeven pagina ophaalt

**Parameters**

 <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
dateFrom

  |   W3C date |  startdatum voor notificaties

  |    |  
 max |   Integer |   maximum aantal notificaties |    |  </tbody></


## Response
### Succes
  
 HTTP 200 OK met een response body in XML formaat


## Voorbeeld 

Request


GET {server}/page/761a5ff9-ba20-4c27-bdb9-41fd70466ef4/notifications

dateFrom=2013-04-05

<div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <response xmlns:rdf="[http://www.w3.org/1999/02/22-rdf-syntax-ns"](http://www.w3.org/1999/02/22-rdf-syntax-ns%22) xmlns:foaf="[http://xmlns.com/foaf/0.1/"](http://xmlns.com/foaf/0.1/%22)xmlns:cdb="[http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL%22)xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <total>2</total><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <activities><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <type>14</type><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <contentType>event</contentType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <createdVia>uitpas.be</createdVia><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <creationDate>2013-04-05T12:54Z</creationDate><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <id>116a5508-f976-455f-9fe9-448ac047eda4</id><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <nodeID>8107298a-e2eb-481c-9526-028d9dfcd6ad</nodeID><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <nodeTitle>Test new activity</nodeTitle><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <pageId>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</pageId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <pageName>Speelgoedbeurs</pageName><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <pageRelType>organiser</pageRelType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <points>0</points><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <private>false</private><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <status>NEW</status><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <userId>8607a6b9-9527-41dd-b684-004bc7eeffe1</userId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> </activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <type>3</type><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <contentType>event</contentType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <createdVia>uitpas.be</createdVia><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <creationDate>2013-04-05T06:54Z</creationDate><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <id>148d6c31-ec41-49f3-9b7d-44e05bc01cc2</id><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <nodeID>598d476d-e0b3-409c-ba83-8a2cd8ce8c51</nodeID><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <nodeTitle>Test</nodeTitle><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <onBehalfOf>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</onBehalfOf><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <points>0</points><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <private>false</private><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <status>READ</status><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <userId>0c4d91f6-44f7-4e6b-811d-b75ad025ba1c</userId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> </activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> </response><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">  <div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;"> <a id="similarPage" name="similarPage"></a>20. Gelijkaardige pagina's opvragen
===============================================================================

 
    <pre style="background-color: rgb(238, 238, 238); padding: 0.75em 1.5em; border: 1px solid rgb(221, 221, 221);"> {server}/page/similar 

* Methode:   
 GET

* Authenticatie:   
<span style="line-height: 19.200000762939453px;">ConsumerRequest</span>

**Parameters**

 <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
title

  |   String |  zoeken naar gelijkaardige titels

  |   x |  </tbody></


## Response
### Succes
  
 HTTP 200 OK met een response body in XML formaat


## Voorbeeld 

Request


GET {server}/page/similar

title=Vrije basschool Sint-Niklaas

<div><div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <response xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <pages><div> <page><div> <address><div> <city></city><div> <country></country><div> <lat>0.0</lat><div> <lon>0.0</lon><div> <street></street><div> <zip></zip><div> </address><div> <categoryIds/><div> <contactInfo><div> <email></email><div> <telephone></telephone><div> </contactInfo><div> <cover></cover><div> <creationDate>2014-01-31T11:34:28+01:00</creationDate><div> <description></description><div> <image></image><div> <keywords/><div> <links><div> <linkBlog></linkBlog><div> <linkFacebook></linkFacebook><div> <linkGooglePlus></linkGooglePlus><div> <linkTicketing></linkTicketing><div> <linkTwitter></linkTwitter><div> <linkWebsite></linkWebsite><div> <linkYouTube></linkYouTube><div> </links><div> <modificationDate>2014-01-31T11:37:20+01:00</modificationDate><div> <name>Vrije Basisschool - Sint-Niklaas (Tereken)</name><div> <officialPage>false</officialPage><div> <permissions><div> <allowActivities>true</allowActivities><div> <allowComments>true</allowComments><div> <allowFollowers>true</allowFollowers><div> <allowLikes>true</allowLikes><div> <allowMembers>true</allowMembers><div> <allowMessages>true</allowMessages><div> <allowRecommendations>true</allowRecommendations><div> </permissions><div> <uid>10c63784-e75c-4427-b7e5-88100f6fd68a</uid><div> <visible>true</visible><div> </page><div> <page><div> <address><div> <city></city><div> <country></country><div> <lat>0.0</lat><div> <lon>0.0</lon><div> <street></street><div> <zip></zip><div> </address><div> <categoryIds/><div> <contactInfo><div> <email></email><div> <telephone></telephone><div> </contactInfo><div> <cover></cover><div> <creationDate>2014-01-31T11:34:10+01:00</creationDate><div> <description></description><div> <image></image><div> <keywords/><div> <links><div> <linkBlog></linkBlog><div> <linkFacebook></linkFacebook><div> <linkGooglePlus></linkGooglePlus><div> <linkTicketing></linkTicketing><div> <linkTwitter></linkTwitter><div> <linkWebsite></linkWebsite><div> <linkYouTube></linkYouTube><div> </links><div> <modificationDate>2014-01-31T11:37:46+01:00</modificationDate><div> <name>Vrije Basisschool - Sint-Niklaas (Tulpenstraat)</name><div> <officialPage>false</officialPage><div> <permissions><div> <allowActivities>true</allowActivities><div> <allowComments>true</allowComments><div> <allowFollowers>true</allowFollowers><div> <allowLikes>true</allowLikes><div> <allowMembers>true</allowMembers><div> <allowMessages>true</allowMessages><div> <allowRecommendations>true</allowRecommendations><div> </permissions><div> <uid>1f85d7b5-42cc-4f84-b630-c78cf2f2be23</uid><div> <visible>true</visible><div> </page><div> </pages><div> </response><div> <div>