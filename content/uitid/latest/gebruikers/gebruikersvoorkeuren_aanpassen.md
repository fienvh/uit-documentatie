---
---

# Gebruikersvoorkeuren aanpassen

	{server}/user/{ID}/preferences

waarbij {ID} de culturefeed ID van de User is

* Method: POST
* Authenticatie: UserAccessToken van de gebruiker die zijn voorkeuren aanpast

## Parameters

activityPrivacyPreferences | privacy voorkeuren per type in het formaat type=private[,type=private]... Voorbeeld: 1=true,2=false,8=true

Bestaande voorkeuren die niet opgegeven worden in deze lijst worden verwijderd uit de gebruikersvoorkeuren

## Response

### Bij succes

HTTP 200 OK met een response body van het type 'preferences'

Zie 14. Gebruikersvoorkeuren opvragen
