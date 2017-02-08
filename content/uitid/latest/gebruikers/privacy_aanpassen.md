---
---

# Privacy aanpassen

Het privé/publiek zetten van bepaalde velden.

Een user veld dat privé staat zal alleen door de user zelf kunnen worden bekeken. Publieke velden kunnen worden bekeken door users die dit opvragen via één van de trusted service consumers van de oorspronkelijke user.

	{server}/user/{ID}/privacy

waarbij {ID} de UiTiD ID van de User is

* Methode: ```POST```
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| nick | ```public``` of ```private``` | Privacystatus van de gebruikersnaam |
| paswoord | ```public``` of ```private``` | Privacystatus van het paswoord |
| givenName | ```public``` of ```private``` | Privacystatus van de voornaam |
| familyName | ```public``` of ```private``` | Privacysstatus van de achternaam  |
| mbox | ```public``` of ```private``` | Privacystatus van het e-mailadres  |
| gender | ```public``` of ```private``` | Privacystatus van het geslacht
| dob | ```public``` of ```private``` | Privacystatus van de geboortedatum  |
| depiction | ```public``` of ```private``` | Privacystatus van de profielfoto  |
| bio | ```public``` of ```private``` | Privacystatus van de korte beschrijving |
| homeAddress | ```public``` of ```private``` | Privacystatus van het adres  |
| homeLocation | ```public``` of ```private``` | Privacystatus van de coördinaten van het thuisadres |
| openId | ```public``` of ```private``` | Privacystatus van de OpenID URI |
| hasChildren | ```public``` of ```private``` | Privacystatus van het HasChildren veld |

Deze call heeft geen verplichte velden.

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* uid: 	de ID van de User

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 400 Bad request: Ontbrekende verplichte velden
