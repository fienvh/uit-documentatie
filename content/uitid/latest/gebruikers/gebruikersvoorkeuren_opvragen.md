---
---

# Gebruikersvoorkeuren opvragen

	{server}/user/{ID}/preferences

waarbij {ID} de culturefeed ID van de User is

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die zijn voorkeuren opvraagt

## Response
HTTP 200 OK met een response body van het type 'preferences'

Preferences
*  uid	ID van de gebruikers
* activityPrivacyPreferences	lijst van activity privacy voorkeuren
* ActivityPrivacyPreferences

* activityType	type activiteit van deze voorkeur
* private	de voorkeur waarde voor het private veld bij nieuwe activiteiten: true | false

## Voorbeeld

Response

	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<preferences xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<activityPrivacyPreferences>
	<activityPrivacyPreference>
	<activityType>1</activityType>
	<private>false</private>
	</activityPrivacyPreference>
	<activityPrivacyPreference>
	<activityType>3</activityType>
	<private>true</private>
	</activityPrivacyPreference>
	<activityPrivacyPreference>
	<activityType>2</activityType>
	<private>true</private>
	</activityPrivacyPreference>
	<activityPrivacyPreference>
	<activityType>4</activityType>
	<private>false</private>
	</activityPrivacyPreference>
	</activityPrivacyPreferences>
	<uid>6d4c39c1-2dc3-4db5-8b62-fa834146266d</uid>
	</preferences>
