---
---

# Lidmaatschappen van een gebruiker weergeven

Een UiTPAS-gebruiker kan deel uitmaken van één of meer verenigingen gedefinieerd binnen het UiTPAS-systeem. Dit noemen we een lidmaatschap.

De lidmaatschappen worden meegegeven in de ‘passholder’ entiteit.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}
```

Voorbeeld
```
{prefix}/uitpas/passholder/uid/1000001514909
```

**Response**

[Voorbeeld response in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_van_pashouder) 

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| Naam vereniging | memberships > membership > association > name | - |
| Einddatum van het lidmaatschap | memberships > membership > endDate | - |
| Kaartsyste(e)m(en) | memberships > membership > association > cardSystem | Kaartsysteem waar de vereniging deel van uitmaakt. |

**Referentie UiTPAS API v3.0**

[Ophalen van een pashouder](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_van_pashouder)


