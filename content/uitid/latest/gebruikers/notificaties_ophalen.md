---
---

# Notificaties ophalen

	{server}/user/{ID}/notifications

waarbij {ID} de culturefeed ID van de User is

* Method: GET
* Authenticatie: UserAccessToken van de gebruiker die zijn notificaties ophaalt

## Parameters

dateFrom	W3C date	startdatum voor notificaties

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat

## Voorbeeld

Request

	GET {server}/user/8602ce8c-9aef-4c49-9f09-3dc587871915/notifications
	dateFrom=2013-04-05

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<total>2</total>
	<activities>
	<activity>
	<type>14</type>
	<contentType>event</contentType>
	<createdVia>uitpas.be</createdVia>
	<creationDate>2013-04-05T12:54Z</creationDate>
	<id>116a5508-f976-455f-9fe9-448ac047eda4</id>
	<nodeID>8107298a-e2eb-481c-9526-028d9dfcd6ad</nodeID>
	<nodeTitle>Test new activity</nodeTitle>
	<pageId>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</pageId>
	<pageName>Speelgoedbeurs</pageName>
	<pageRelType>organiser</pageRelType>
	<points>0</points>
	<private>false</private>
	<status>NEW</status>
	<userId>8607a6b9-9527-41dd-b684-004bc7eeffe1</userId>
	</activity>
	<activity>
	<type>3</type>
	<contentType>event</contentType>
	<createdVia>uitpas.be</createdVia>
	<creationDate>2013-04-05T06:54Z</creationDate>
	<id>148d6c31-ec41-49f3-9b7d-44e05bc01cc2</id>
	<nodeID>598d476d-e0b3-409c-ba83-8a2cd8ce8c51</nodeID>
	<nodeTitle>Test</nodeTitle>
	<onBehalfOf>761a5ff9-ba20-4c27-bdb9-41fd70466ef4</onBehalfOf>
	<points>0</points>
	<private>false</private>
	<status>READ</status>
	<userId>0c4d91f6-44f7-4e6b-811d-b75ad025ba1c</userId>
	</activity>
	</response>
