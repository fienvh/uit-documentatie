---
---

# Het UiTPAS-profiel van de gebruiker weergeven
Het UiTPAS-profiel van de pashouder bevat onder meer:
* UiTPAS-nummer
* kaartsysteem
* informatie over het kansen statuut
* puntensaldo
* NAW-gegevens

Op basis van het UiTPAS-nummer kunnen we het profiel ophalen.

> Online aanpassen van het UiTPAS-profiel is niet mogelijk. Daarvoor moet de pashouder naar een registratie-balie gaan. Registratie balies zijn UiTPAS-balies die de rechten hebben om pashouders te registreren, en hun gegevens te wijzigen. 

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}
```

Voorbeeld

```
{prefix}/uitpas/passholder/uid/1000001514909
```

**Response** 

[Voorbeel response in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_van_pashouder) 

[Overzicht beschikbare velden entiteit 'pashouder'](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_pashouder_entiteit) 

**Referentie UiTPAS API v3.0**

[Ophalen van een pashouder](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_van_pashouder) 
