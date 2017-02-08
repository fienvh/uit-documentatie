---
---
 <a id="3" name="3"></a>3. Rechten van een pagina beheren
=========================================================

 
    <pre class="rteleft"> {server}/page/{uid}/permissions 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken van een gebruiker die beheerder is van de pagina. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
 allowFollowers |   Boolean |   Toelaten om pagina te volgen |    |  
 allowMembers |   Boolean |   Toelaten om lid te worden van de pagina |    |  
 allowLikes |   Boolean |   Toelaten om pagina te liken |    |  
 allowComments |   Boolean |   Toelaten om commentaren op een pagina toe te voegen |    |  
 allowRecommendations |   Boolean |   Toelaten om pagina aan te bevelen |    |  
 allowMessages |   Boolean |   Toelaten om berichten te versturen naar de pagina |    |  
 allowActivities |   Boolean |   Activiteiten namens de pagina toelaten |    |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string |  
 uid |   De ID van de User |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 400 Bad request |   Verplichte velden niet meegegeven. Meer uitleg in 'message'. |  
 HTTP 421 ItemExists |   User met zelfde mbox bestaat reeds. | </tbody></


## Voorbeeld 

Request
  
 POST {server}/page/f99828ee-0cc4-4236-9ff7-cc300dd73588/permissions  
 allowLikes=false  
 &allowComments=true

Response

**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><?xml version="1.0" encoding="UTF-8" standalone="yes"?></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><page xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)</span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <creationDate>2013-01-29T14:21:56+01:00</creationDate></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <description>Test</description></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <id>1</id></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <name>Test</name></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <permissions>  
</span>****<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><allowComments>true</allowComments></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <allowFollowers>true</allowFollowers></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <allowLikes>false</allowLikes></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <allowMembers>false</allowMembers>  
</span>****<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><allowMessages>true</allowMessages></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <allowRecommendations>false</allowRecommendations></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> </permissions></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <uid>f99828ee-0cc4-4236-9ff7-cc300dd73588</uid></span>**  
**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"></page></span>**

