---
---

# Coupons van een gebruiker weergeven

Coupons (of voordeelbonnen) geven aan een gebruiker korting op de ticketprijs van een UiTPAS-event. Coupons worden aangemaakt door de systeem administrator van een UiTPAS-kaartsysteem, en toegekend aan een (segment van) de UiTPAS-gebruikers.

Een coupon kan 1 of meerdere keren omgeruild worden, en dit absoluut, of binnen een bepaalde tijdsperiode (dag, week, …)

O.b.v. het UiTPAS-nummer kunnen we de beschikbare coupons voor een gebruiker ophalen.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/coupons
```

Voorbeeld

```
{prefix}/uitpas/passholder/1000000061811/coupons
```

**Response**

[Voorbeeld response in XML](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_opzoeken_van_coupons_van_een_pashouder)

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Naam coupon | ticketSaleCoupon > name | - |
| Geldigheid | ticketSaleCoupon > validFrom en ticketSaleCoupon > validTo | Bepaalt de periode waarin de coupon geldig is. |
| Aantal beurten op de coupon | ticketSaleCoupon > remainingTotal > periodType en ticketSaleCoupon > remainingTotal > periodVolume | In geval <periodtype> de waarde ‘absolute’ heeft", toon dan volgende copy: *Beschikbaar: <periodVolume> beurten*. In geval <periodtype> een andere waarde heeft, ga je de output wat moeten veranderen. *Beschikbaar: <periodVolume> beurten, per <periodtype>*.
PeriodType kan daarbij volgende waarden aannemen: daily, weekly, monthly, quarterly, yearly. |
| Kaartsysteem | ticketSaleCoupon > cardSystem | Een UiTPAS-gebruiker kan aangesloten zijn bij meerdere kaartsystemen, en dus coupons hebben bij meerdere kaartsystemen. Op basis van het element ```cardSystem``` kan de lijst van coupons opgesplitst worden in de frontend. Velden ```id``` en ```name``` zijn beschikbaar. |

**Referentie UiTPAS API v3.0**

[Opzoeken coupons van een pashouder](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_opzoeken_van_coupons_van_een_pashouder)

## Detail informatie voor een specifieke coupon weergeven**

Indien nodig kan via het veld ```couponId``` verdere detail-informatie voor de coupon opgevraagd worden. Dit kan bijvoorbeeld nodig zijn wanneer je naast de naam ook de beschrijving van de coupon wil weergeven.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/coupons/{couponId}
```

**Referentie UiTPAS API v3.0**

[Individuele coupon van een pashouder ophalen](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_opzoeken_van_een_coupon_van_een_pashouder)
