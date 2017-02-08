---
---

# Een gebruiker verwijderen

	{server}/user/{ID}/delete

waarbij {ID} de culturefeed ID van de User is

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die zichzelf verwijdert

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* uid: de ID van de User
