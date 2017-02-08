---
---

# Gegevens van een pagina ophalen

  {server}/page/{uid}

waarbij {uid} de identificatie van de pagina is  

* Methode: GET
* Authenticatie:
  * UserAccessToken van de gebruiker die het opvragen uitvoert  
  * Consumer request van de Service Consumer die het opvragen uitvoert

## Response

### Succes

<span style="color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 19.1875px;">HTTP 200 OK met een response body in XML formaat zijnde de Page entiteit.</span>  ### Fout
 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


<td style="vertical-align: top;"> HTTP 404 Not found |  <td style="vertical-align: top;"> De pagina met de opgegeven {uid} wordt niet gevonden  
  | </tbody></


## Voorbeeld

Request

 GET {server}/page/372703bc-39eb-4ead-84e8-d2ec4ae181aa

Response

<div><div> <?xml version="1.0" encoding="UTF-8" standalone="yes"?><div> <page xmlns:rdf="<http://www.w3.org/1999/02/22-rdf-syntax-ns"> xmlns:foaf="<http://xmlns.com/foaf/0.1/"> xmlns:cdb="<http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL"> xmlns:geo="[http://www.w3.org/2003/01/geo/wgs84\_pos#">](http://www.w3.org/2003/01/geo/wgs84_pos#">)<div> <address><div> <city>Hasselt</city><div> <country>BE</country><div> <lat>50.9216401</lat><div> <lon>5.3537689</lon><div> <street>Ilgatlaan</street><div> <zip>3500</zip><div> </address><div> <categoryIds><div> <categoryId>0.0.12.0</categoryId><div> <categoryId>0.0.14.0</categoryId><div> </categoryIds><div> <contactInfo><div> <email>[info@tuintips.be](mailto:info@tuintips.be)</email><div> <telephone>12345689</telephone><div> </contactInfo><div> <creationDate>2013-03-15T15:28:53.416+01:00</creationDate><div> <description>Tuintips</description><div> <links><div> <linkBlog>blog.tuintips.be</linkBlog><div> <linkFacebook>[www.tuintips.be/facebook</linkFacebook>](http://www.tuintips.be/facebook</linkFacebook>)<div> <linkGooglePlus>[www.tuintips.be/google+</linkGooglePlus>](http://www.tuintips.be/google+</linkGooglePlus>)<div> <linkTicketing>[www.tuintips.be/ticketing</linkTicketing>](http://www.tuintips.be/ticketing</linkTicketing>)<div> <linkTwitter>[www.tuintips.be/twitter</linkTwitter>](http://www.tuintips.be/twitter</linkTwitter>)<div> <linkWebsite>[www.tuintips.be</linkWebsite>](http://www.tuintips.be</linkWebsite>)<div> <linkYouTube>[www.tuintips.be/youtube</linkYouTube>](http://www.tuintips.be/youtube</linkYouTube>)<div> </links><div> <name>Tuintips</name><div> <officialPage>false</officialPage><div> <permissions><div> <allowActivities>true</allowActivities><div> <allowComments>true</allowComments><div> <allowFollowers>true</allowFollowers><div> <allowLikes>true</allowLikes><div> <allowMembers>true</allowMembers><div> <allowMessages>true</allowMessages><div> <allowRecommendations>true</allowRecommendations><div> </permissions><div> <tagline>tuintips tagline</tagline><div> <uid>c2202c49-6882-456c-bfaa-84f2a1b91d8c</uid><div> <visible>true</visible><div> </page>   
