---
---

# Een online account aanpassen

Service consumers kunnen eventueel een online account (twitter, gmail, facebook) koppelen aan de gebruikers UiTiD en verwijderen

	{server}/user/{ID}/onlineaccount/update

met {ID} de UiTiD ID van de User is

* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die eigenaar is van het online account in kwestie

## Parameters

accountName	| ID van het online account	|  Verplicht
accountType	|  type van het online account	| Verplicht
private	| true of false | indien true, dan wordt dit online account opgenomen in de publieke data van deze gebruiker	 
publishActivities | true of false | indien true, dan worden (relevante) activiteiten doorgepost naar dit online account	 

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
