---
---

# Gebruiker ophalen

Het Ophalen van User data gebeurt via deze methode:

	{server}/user/{id}

waarbij {ID} de UiTiD ID van de User is

* Methode: ```GET```
* Authenticatie: UserAccessToken van de gebruiker die het opvragen uitvoert óf Consumer request van de Service Consumer die het opvragen uitvoert (enkel publieke data)

## Parameters

private	|true, false (default) | optionele parameter die bepaalt of privé velden van de gebruiker opgevraagd worden.

## Response

### Succes

HTTP 200 OK

* De response body in XML formaat bestaat uit User entiteit inclusief zijn publieke velden.
* De private velden van de gebruiker worden ook meegestuurd als de parameter “private” werd meegegeven met de waarde “true”

### Error

HTTP 404 Not found

* De user met de opgegeven {ID} wordt niet gevonden

## Voorbeeld

request

	GET {server}/user/0df9ebfe-1899-49f2-bc1e-774213831ff5

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<foaf:person xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<createdOn>2011-07-26T20:32Z</createdOn>
	<foaf:nick>test</foaf:nick>
	<status>PUBLIC</status>
	<rdf:id>0df9ebfe-1899-49f2-bc1e-774213831ff5</rdf:id>
	</foaf:person>

Request

	GET {server}/user/cb0366bb-e552-4afc-82f2-b4e40707cdac?private=true

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<foaf:person xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<createdOn>2011-06-29T13:42Z</createdOn>
	<foaf:dob>1985-09-10T00:00Z</foaf:dob>
	<foaf:givenName>Steven</foaf:givenName>
	<foaf:gender>female</foaf:gender>
	<foaf:homeAddress>xxy, 3000 Leuven</foaf:homeAddress>
	<foaf:lastLogin>2011-07-26T20:38Z</foaf:lastLogin>
	<foaf:familyName>Peeters</foaf:familyName>
	<modifiedOn>2011-07-26T20:38Z</modifiedOn>
	<foaf:nick>Steven_cmzxwm24</foaf:nick>
	<status>PUBLIC</status>
	<hasChildren>true</hasChildren>
	<rdf:id>cb0366bb-e552-4afc-82f2-b4e40707cdac</rdf:id>
	</foaf:person>
