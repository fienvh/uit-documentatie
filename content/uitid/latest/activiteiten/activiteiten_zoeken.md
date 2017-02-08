---
---

# Acties zoeken


Zoeken van activities. Deze call laat veel verschillende zoekparameters toe.
Hiermee kunnen de activiteiten van één bepaalde user worden opgebouwd, lijsten van de laatste activiteitn op 1 bepaalde service consumer worden gebouwd etc.

	{server}/activity

* Methode: GET
* Authenticatie:
	* ConsumerRequest van de Service Consumer die de zoekopdracht uitvoert of 
	* UserAccessToken van de gebruiker die de zoek opdracht uitvoert in het geval privé activiteiten (parameter private=true). In dit geval moet de userId parameter opgegeven worden. Gebruikers kunnen enkel eigen privé activiteiten ophalen.

## Parameters

| userId | `String` | ID van de auteur van deze activiteit | Verplicht
| nodeId | `String` | nodeId van deze activiteit (= CDBID van het evenement) | Verplicht
| nodeTitle | `String` | titel van deze activiteit | Verplicht
| contentType | `String` | het content type van deze activiteit | Verplicht
| type | `int` | consumptionType van deze activiteit | Verplicht
| value | `String` | waarde van deze activiteit | Verplicht
| points | `int` | punten van deze activiteit |
| private | `true` of `false` | privacy status van deze activiteit
| parentActivity | String | ID van de parent activiteit. Enkel toegelaten bij type 'comment' |
| onBehalfOf | String | Activity gebeurt namens de pagina met de gegeven uid |

Indien de parameter private niet meegeven wordt, dan zal de voorkeur van de gebruiker gebruikt worden voor het type activiteit. Indien de gebruiker geen voorkeur heeft, wordt de activiteit standaard publiek gezet. Indien private meegegeven wordt, dan heeft dit voorrang op de gebruikersvoorkeur.

## Responses

### Succes

HTTP 200 OK met een response body in XML formaat
* code: status code string
* activityID: ID van de aangemaakte activiteit

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie

* HTTP 400 Bad request: ontbrekende parameters
* HTTP 403 Forbidde: er is geen gebruiker geauthenticeerd of de geauthenticeerde gebruiker heeft geen rechten om een activiteit voor de opgegeven userId aan te maken

## Voorbeeld

Request

	POST {server}/culturefeed/rest/activity
	nodeId=EXAMPLE-CDBID
	&userId=b726781c-84d5-472f-93dc-74ed982658f8
	&value=test
	&type=3
	&private=false

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	   <code>ActivityCreated</code>
	   <activityId>3b57f54a-2d3e-4577-b2b2-9ef7715547dd</activityId>
	</response>
