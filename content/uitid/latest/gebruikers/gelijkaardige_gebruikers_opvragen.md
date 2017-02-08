---
---

# Gelijkaardige gebruikers opvragen

Gelijkaardige gebruikers ophalen, gebaseerd op klikgedrag.
Met deze call worden “cultuurburen” of gebruikers die gelijkaardig zijn aan jou” opgebouwd.

	user/{ID}/similar

waarbij {ID} de UiTiD ID van de User is

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die gelijkaardige gebruikers opvraagt.

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

* code	Status code string
* users	lijst van gelijkaardige Users.
Z
oekopdrachten geven enkel de ID, nick, depiction en eventueel een sortValue terug. De overige data kan opgehaald worden via 2. Data van User ophalen

## Voorbeeld

response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<code>SimilarUsers</code>
	<users>
	<user>
	<foaf:nick>Frederik</foaf:nick>
	<sortValue>0.08451</sortValue>
	<rdf:id>a1ab74db-ac9c-444f-a8b2-91de61a1fe16</rdf:id>            <foaf:depiction>http://media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/picture-730.jpg</foaf:depiction>
	</user>
	<user>
	<foaf:nick>Elvoization</foaf:nick>
	<sortValue>0.07639</sortValue>
	<rdf:id>0e15d54c-de57-4893-9fb2-fcdfef4503b2</rdf:id>
	<foaf:depiction>http://media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/picture-25321.jpg</foaf:depiction>
	</user>
	<user>
	<foaf:nick>hilde jacobs</foaf:nick>
	<sortValue>0.06857</sortValue>
	<rdf:id>eac331f5-81bb-49eb-857e-f1d56b3564e6</rdf:id>
	<foaf:depiction>http://media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/default.png</foaf:depiction>
	</user>
	</users>
	</response>
