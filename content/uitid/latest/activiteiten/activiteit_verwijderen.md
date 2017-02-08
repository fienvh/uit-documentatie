---
---

# Activiteit verwijderen

Gebruikers kunnen acties verwijderen zodat deze ook niet meer meetellen in het berekenen van hun aanbevelingen.

{server}/activity/{ID}/delete

waarbij {ID} de ID van de Activity is

* Method: `GET`
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* activityID: ID van de aangemaakte activiteit

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie

* HTTP 400 Bad request: code `ActivityDeleteNotAllowed` indien het niet mogelijk is de activiteit te verwijderen
* HTTP 403 Forbidden: er is geen gebruiker geauthenticeerd of de geauthenticeerde gebruiker heeft geen rechten om een activiteit voor de opgegeven userId te verwijderen
