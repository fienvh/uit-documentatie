---
---

# Een online account verwijderen

	{server}/user/{ID}/onlineaccount/delete

waarbij {ID} de culturefeed ID van de User is

* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die eigenaar is van het online account in kwestie

## Parameters

accountName	| ID van het online account	| Verplicht
accountType | type van het online account	| Verplicht

## Responses

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
