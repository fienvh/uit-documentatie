---
---

# Gebruiker zoeken

Het doorzoeken van UiTiD users, met consumer request. Enkel ID, nick, depiction en eventueel een sortValue worden teruggegeven want als publiek beschouwd.

	{server}/user/search

* Methode: ```GET```
* Authenticatie: UserAccessToken van de gebruiker die het opvragen uitvoert óf Consumer request van de Service Consumer die het opvragen uitvoert (enkel publieke data)

## Parameters

| userId | UiTiD ID |
| nick | Screen name van de user |
| name | Voornaam en/of familienaam en/of nick |
| mbox | E-mailadres |
| mboxIncludePrivate | ```true``` of ```false``` <br>Indien ```true``` wordt ook gezocht in private email adressen. Dit vereist een speciale permissie van de Service Consumer: ```USERS - READ_PRIVATE_EMAIL``` |
| gender | Geslacht van de gebruiker |
| dob | Geboortedatum in W3CDate formaat (exacte match op basis van de dag - uren, minuten, seconden worden genegeerd) |
| dobMin | Minimum geboortedatum in W3CDate formaat |
| dobMax | Maximum geboortedatum in W3CDate formaat |
| homeStreet | Straat  |
| homeZip | Postcode |
| homeCity | Gemeente  |
| homeCountry | Land |
| homeLocation | Coördinaten van de thuis locatie in formaat lat;lon[!radius]. <br>Hierbij kan je de straal meegeven in kilometer (standaard) of meter.<br>Bv. ```50.8554;4.351!1.5km``` of ```50.8554;4.351!1500m``` |
| status | Status van de user |
| points | Aantal punten van de user |
| pointsMin |
| pointsMax |
| likes | Aantal likes van de user |
| likesMin |
| likesMax |
| createdBy | ID van de Service Consumer die de user heeft aangemaakt. |
| lastLogin | Laatste inlogdatum in W3CDate formaat. Dit is exacte match op basis van de dag. Uren, minuten, seconden worden genegeerd. |
| lastLoginMin | Minimum laatste inlog datum in W3CDate formaat |
| lastLoginMax | Maximum laatste inlog datum in W3CDate formaat |
| currentLocation | Coördinaten van de huidige locatie in formaat lat;lon |
| hasChildren | Boolean. Zoek op gebruiker met (true) of zonder (false) kinderen. |
| start | Start positie in de lijst |
| max | Maximum aantal resultaten dat teruggegeven zal worden |
| sort | Sortering: creationDate (standaard), userId, firstName, lastName, lastLoginDate, lastActivityDate, numberOfActivities, numberOfLikes, numberOfSharesFacebook, numberOfSharesTwitter, numberOfAttends, numberOfActiveActivities |
| order | Volgorde: ascending (standaard), descending |


Het numberOfActiveActivities is de som van het aantal numberOfLikes, numberOfSharesFacebook, numberOfSharesTwitter en de numberOfAttends.

Wanneer de sortering ingesteld is op numberOfActivities, numberOfLikes, numberOfSharesFacebook, numberOfSharesTwitter, numberOfAttends of numberOfActiveActivities dan wordt er een extra veld “sortValue” opgenomen in de zoekresultaten met de waarde van het gesorteerde veld.

## Response

### Succes

HTTP 200 OK

met een response body in XML formaat.

* code: status code string
* uid: de ID van de User
* users: lijst van gevonden Users
* total: het totaal aantal gevonden gebruikers

Zoekopdrachten geven enkel de ID, nick, depiction en eventueel een sortValue terug. De overige data kan opgehaald worden via Data van User ophalen.

## Voorbeeld

Request

	GET {server}/user/search?name=ellen

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<code>SearchOK</code>
	<users>
	<user>
	<foaf:nick>Ellen_1rnbzrxe</foaf:nick>
	<rdf:id>404014db-69af-439b-b9d6-481f13624363</rdf:id>
	</user>
	<user>
	<foaf:nick>Ellen_5evtwh6i</foaf:nick>
	<rdf:id>ba7939a9-0bee-4f7b-9e1c-efb4315b8481</rdf:id>
	</user>
	<user>
	<foaf:nick>Ellen_1dnuukts</foaf:nick>
	<rdf:id>ee46e573-e53c-4bc0-af7f-06b2612f6607</rdf:id>
	</user>
	<user>
	<foaf:nick>Ellen_82kiumus</foaf:nick>
	<rdf:id>282919c8-ec2d-4840-bbd7-8de2d8625664</rdf:id>
	</user>
	<user>
	<foaf:nick>Ellen_m7r6cpv4</foaf:nick>
	<rdf:id>b4e8ccda-202a-487b-bc19-e2982d9812ca</rdf:id>
	</user>
	</users>
	</response>
