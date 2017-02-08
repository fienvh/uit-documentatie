---
---

# Profielfoto opladen

Het aanpassen of toevoegen van een profielfoto.

	{server}/user/{ID}/upload_depiction

waarbij {ID} de UiTiD ID van de User is

* Methode: ```POST```
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| depiction | ```bytes``` | De bytes van het eigenlijke afbeeldingsbestand. Ondersteunde formaten zijn: JPG, PNG en GIF. De maximum bestandsgrootte is 2 MB. | Verplicht |

Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header ```Content-Type```  ```multipart/form-data``` moet zijn. We raden aan om de filename van de ```Content-Disposition``` in te stellen. Deze naam zal gebruikt worden als bestandsnaam in de URL van de image.

## Response

HTTP 200 OK met een response body in XML formaat

* code: Status code string: DepictionUploaded of DepictionUploadFailed
* uid	De ID van de User

## Voorbeeld

Request

	POST http://{server}/user/{USER_ID}/upload_depiction
	Content-Type: multipart/form-data
	Accept: application/xml
	Authorization: OAuth oauth_signature="...", oauth_version="1.0", oauth_nonce="...", oauth_consumer_key="...", oauth_signature_method="HMAC-SHA1", oauth_token="...", oauth_timestamp="...."
	--Boundary_4_10784296_1322767159646
	Content-Type: multipart/form-data
	Content-Disposition: form-data; filename="erwin-profile3.jpg"; name="depiction"
	… raw image data ...

	--Boundary_4_10784296_1322767159646--

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<code>DepictionUploaded</code>
	<uid>{USER_ID}</uid>
	</response>
