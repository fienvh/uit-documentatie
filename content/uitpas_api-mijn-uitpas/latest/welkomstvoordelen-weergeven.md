---
---

# Welkomstvoordelen van een gebruiker weergeven
Welkomstvoordelen zijn voordelen die de gebruiker krijgt bij aansluiting op een kaartsysteem (bij aankoop van een UiTPAS, of bij upgrade van de UiTPAS met een ander kaartsysteem). 

O.b.v. het UiTPAS-nummer kunnen we de beschikbare welkomstvoordelen voor een gebruiker ophalen.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/welcomeadvantages
```

Voorbeeld

```
{prefix}/uitpas/passholder/0987654321113/welcomeadvantages
```

**Response**

[Voorbeeld response in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_welkomstvoordelen_voor_pashouder) 

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| Naam welkomstvoordeel | promotion > title | - |
| Balies waar je het voordeel kan opnemen | promotion > balies | Lijst van balies waar je het voordeel kan opnemen. |
| Kaartsyste(e)m(en) | promotion > applicableCardSystems | Lijst van de kaartsystemen waar het voordeel toepasbaar is. |
| Status omruil | promotion > cashedIn | Geeft aan op het voordeel werd opgenomen of niet. true of false. |

[Overzicht van alle velden van de entiteit ‘welcomeadvantages’](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_welcomeadvantage_entiteit) 

**Referentie UiTPAS API v3.0**

[Ophalen welkomstvoordelen van een pashouder](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_welkomstvoordelen_voor_pashouder)
