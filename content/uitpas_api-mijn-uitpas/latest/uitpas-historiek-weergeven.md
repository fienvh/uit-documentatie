---
---

# UiTPAS-historiek van de gebruiker weergeven

Binnen het UiTPAS-systeem kan een gebruiker: 
1. Punten sparen (door een checkin te doen op een UiTPAS event)
2. Voordelen omruilen (tegen punten)
3. Tickets aan kansentarief kopen (enkel voor pashouders met kansenstatuut). 

Van de 3 acties afzonderlijk kan een overzicht of historiek opgevraagd worden via de API. 

In de frontend kunnen de 3 types van acties eventueel gecombineerd worden in één historiek, geordend op creatie datum.

## Punten historiek 

Een pashouder kan punten sparen door een checkin te doen op een UiTPAS event. Iedere checkin geeft recht op een (instelbaar) aantal punten. 

![Punten historiek](/img/uitpas_api-mijn-uitpas-historiek-punten.png "Punten historiek")

**Request**

```
GET {prefix}/uitpas/cultureevent/searchCheckins?uid={uid}
```

Voorbeeld

```
{prefix}/uitpas/cultureevent/searchCheckins?uid=22b69dc0-abf7-40f2-8ae7-c1e69811ed7c
```

**Response** 

[Voorbeeld response in XML](http://acc.uitid.be/uitid/apidoc/uitpas-api.html#_checkins_doorzoeken)

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | checkinActivity > creationDate | - |
| Event titel | checkinActivity > nodeTitle | - |
| Locatie naam | checkinActivity > createdVia | - |
| Aantal punten | checkinActivity > points | - |

Als er informatie van het event getoond moet worden (buiten de titel), dan kan het event detail opgehaald worden via Search API door een search op ```cdbid``` (vervat in het element ```nodeId```): 

Voorbeeld

```
https://www.uitid.be/uitid/rest/searchv2/search?q=cdbid:{nodeId}
```

**Referentie UiTPAS API v3.0**

[Checkins doorzoeken](http://acc.uitid.be/uitid/apidoc/uitpas-api.html#_checkins_doorzoeken)

## Historiek omgeruilde voordelen weergeven

Gespaarde punten kan een pashouder omruilen tegen ‘omruilvoordelen’. 
De omruilvoordelen die door een pashouder omgeruild werden kunnen opgehaald worden o.b.v. UiTPAS-nummer.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/cashedPointsPromotions
```

Voorbeeld

```
{prefix}/uitpas/passholder/0930012345607/cashedPointsPromotions
```

**Response**

[Voorbeeld reponse in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_verzilverde_omruilvoordelen)

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | cashedPromotion > cashingDate | - |
| Voordeel titel | cashedPromotion > promotion > title | - |
| Locatie naam | cashedPromotion > balie > name | Naam van de balie waar het voordeel werd omgeruild. |
| Aantal punten | cashedPromotion > promotion > points | - |

**Referentie UiTPAS v3.0**

[Ophalen van verzilverder omruilvoordelen](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ophalen_verzilverde_omruilvoordelen)

## Historiek gekochte kansentarieven weergeven

Pashouders met kansenstatuut kunnen tickets tegen kansentarief aankopen in het systeem. 

Een pashouder met kansenstatuut heeft in het pashouder profiel, een waarde ```true``` op het veld currentCard > kansenpas.  Voor pashouders met waarde ```false``` zal geen ticket historiek gegeven kunnen worden.

De ticket historiek kunnen we ophalen o.b.v. UiTPAS-nummer.

**Request**

```
GET {prefix}/uitpas/cultureevent/searchTicketsales?uid={uid}
```

Voorbeeld

```
{prefix}/uitpas/cultureevent/searchTicketsales?uid=17aeba35-d926-4d60-8cf6-532353dc8ff3
```

**Response**

[Voorbeeld response in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_verkoop_tickets_doorzoeken)

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | ticketSale > creationDate | - |
| Event titel | ticketSale > nodeTitle | Naam van het event waarvoor een ticket werd gekocht. |
| Event organiser | ticketSale > organiser | Organisator van het event. |

[Overzicht beschikbare velden entiteit 'ticketsale'](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_ticketsale_entiteit_bij_zoekopdracht) 

**Referentie UiTPAS API v3.0**

[Verkoop tickets doorzoeken](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_verkoop_tickets_doorzoeken)


