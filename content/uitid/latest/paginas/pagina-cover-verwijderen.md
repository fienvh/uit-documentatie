---
---
 <a id="removeCover" name="removeCover"></a>18. Pagina cover verwijderen


 
    {server}/page/{uid}/cover/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina. ## Parameters <


|  Parameter Type Beschrijving Verplicht| 
  |    |    |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: COVER\_REMOVED of ACTION\_FAILED |  </tbody></


## Voorbeeld 

Request
POST {server}/page/51d441b9-e23d-4875-b517-fe2bbd7f185/cover/remove

Response

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<code>COVER\_REMOVED</code>
<message>Cover is successfully removed.</message>
</response>
<a id="userPageNotifications" name="userPageNotifications"></a>19. User notificaties mbt pagina ophalen
==

 
    <pre style="background-color: rgb(238, 238, 238); padding: 0.75em 1.5em; border: 1px solid rgb(221, 221, 221); color: rgb(0, 0, 0); line-height: 19.1875px;"> {server}/page/{ID}/notifications waarbij {ID} de culturefeed ID van de Page is 

* Methode:   
 GET

* Authenticatie:   
 UserAccessToken van de gebruiker die zijn notificaties mbt tot de gegeven pagina ophaalt

**Parameters**

 <


|  Parameter Type Beschrijving Verplicht| 
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

<div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<?xml version="1.0" encoding="UTF-8" standalone="yes"?><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<response xmlns:rdf="[http://www.w3.org/1999/02/22-rdf-syntax-ns"](http://www.w3.org/1999/02/22-rdf-syntax-ns%22) xmlns:foaf="[http://xmlns.com/foaf/0.1/"](http://xmlns.com/foaf/0.1/%22)xmlns:cdb="[http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL%22)xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#"><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<total>2</total><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<activities><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<type>14</type><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<contentType>event</contentType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<createdVia>uitpas.be</createdVia><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<creationDate>2013-04-05T12:54Z</creationDate><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<id>116a5508-f976-455f-9fe9-448ac047eda4</id><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<nodeID>8107298a-e2eb-481c-9526-028d9dfcd6ad</nodeID><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<nodeTitle>Test new activity</nodeTitle><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<pageId>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</pageId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<pageName>Speelgoedbeurs</pageName><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<pageRelType>organiser</pageRelType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<points>0</points><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<private>false</private><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<status>NEW</status><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<userId>8607a6b9-9527-41dd-b684-004bc7eeffe1</userId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
</activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<type>3</type><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<contentType>event</contentType><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<createdVia>uitpas.be</createdVia><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<creationDate>2013-04-05T06:54Z</creationDate><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<id>148d6c31-ec41-49f3-9b7d-44e05bc01cc2</id><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<nodeID>598d476d-e0b3-409c-ba83-8a2cd8ce8c51</nodeID><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<nodeTitle>Test</nodeTitle><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<onBehalfOf>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</onBehalfOf><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<points>0</points><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<private>false</private><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<status>READ</status><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<userId>0c4d91f6-44f7-4e6b-811d-b75ad025ba1c</userId><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
</activity><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
</response><div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<div style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">
<a id="similarPage" name="similarPage"></a>20. Gelijkaardige pagina's opvragen
=

 
    <pre style="background-color: rgb(238, 238, 238); padding: 0.75em 1.5em; border: 1px solid rgb(221, 221, 221);"> {server}/page/similar 

* Methode:   
 GET

* Authenticatie:   
<span style="line-height: 19.200000762939453px;">ConsumerRequest

**Parameters**

 <


|  Parameter Type Beschrijving Verplicht| 
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

 <?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84\_pos#">
<pages>
<page>
<address>
<city></city>
<country></country>
<lat>0.0</lat>
<lon>0.0</lon>
<street></street>
<zip></zip>
</address>
<categoryIds/>
<contactInfo>
<email></email>
<telephone></telephone>
</contactInfo>
<cover></cover>
<creationDate>2014-01-31T11:34:28+01:00</creationDate>
<description></description>
<image></image>
<keywords/>
<links>
<linkBlog></linkBlog>
<linkFacebook></linkFacebook>
<linkGooglePlus></linkGooglePlus>
<linkTicketing></linkTicketing>
<linkTwitter></linkTwitter>
<linkWebsite></linkWebsite>
<linkYouTube></linkYouTube>
</links>
<modificationDate>2014-01-31T11:37:20+01:00</modificationDate>
<name>Vrije Basisschool - Sint-Niklaas (Tereken)</name>
<officialPage>false</officialPage>
<permissions>
<allowActivities>true</allowActivities>
<allowComments>true</allowComments>
<allowFollowers>true</allowFollowers>
<allowLikes>true</allowLikes>
<allowMembers>true</allowMembers>
<allowMessages>true</allowMessages>
<allowRecommendations>true</allowRecommendations>
</permissions>
<uid>10c63784-e75c-4427-b7e5-88100f6fd68a</uid>
<visible>true</visible>
</page>
<page>
<address>
<city></city>
<country></country>
<lat>0.0</lat>
<lon>0.0</lon>
<street></street>
<zip></zip>
</address>
<categoryIds/>
<contactInfo>
<email></email>
<telephone></telephone>
</contactInfo>
<cover></cover>
<creationDate>2014-01-31T11:34:10+01:00</creationDate>
<description></description>
<image></image>
<keywords/>
<links>
<linkBlog></linkBlog>
<linkFacebook></linkFacebook>
<linkGooglePlus></linkGooglePlus>
<linkTicketing></linkTicketing>
<linkTwitter></linkTwitter>
<linkWebsite></linkWebsite>
<linkYouTube></linkYouTube>
</links>
<modificationDate>2014-01-31T11:37:46+01:00</modificationDate>
<name>Vrije Basisschool - Sint-Niklaas (Tulpenstraat)</name>
<officialPage>false</officialPage>
<permissions>
<allowActivities>true</allowActivities>
<allowComments>true</allowComments>
<allowFollowers>true</allowFollowers>
<allowLikes>true</allowLikes>
<allowMembers>true</allowMembers>
<allowMessages>true</allowMessages>
<allowRecommendations>true</allowRecommendations>
</permissions>
<uid>1f85d7b5-42cc-4f84-b630-c78cf2f2be23</uid>
<visible>true</visible>
</page>
</pages>
</response> 