---
---

# PointsPromotion entiteit

| **Parameter** | **Type** | **Beschrijving** |
| id | Long | identificatie van de verzilveractie |
| title | String | titel van de verzilveractie |
| description1 | String | omschrijving van de verzilveractie |
| description2 | String | omschrijving van de verzilveractie |
| applicableCardSystem | List<CardSystem> | lijst van kaartsystemen waarvoor het omruilvoordeel geldig is |
| owningCardSystem | CardSystem | kaartsysteem waar het omruilvoordeel werd aangemaakt |
| cashedIn | boolean | true indien verzilveractie werd opgenomen |
| balies | List<Balie> | balies waar deze verzilveractie opgenomen kan worden, leeg indien iedere balie |
| points | int | aantal punten die nodig zijn voor de verzilveractie |
| creationDate | W3C date | datum wanneer de verzilveractie werd aangemaakt |
| cashingPeriodBegin | W3C date | begindatum van de verzilverperiode |
| cashingPeriodEnd | W3C date | einddatum van de verzilverperiode |
| publicationPeriodBegin | W3C date | begindatum van publicatie periode |
| publicationPeriodEnd | W3C date | einddatum van publicatie periode |
| inSpotlight | boolean | staat omruilvoordeel in de kijker |
| pictures | List<String> | afbeeldingen |
| validForCities | List<String> | de verzilveractie is geldig voor pashouders uit deze gemeenten |
| maxAvailableUnits | Integer | aantal beschikbaar, onbeperkt indien leeg |
| periodConstraint | PeriodConstraint | beperking op het verzilveren |
| unitsTaken | int | aantal keer dat de verzilveractie werd opgenomen |
| cashInState | String | Wordt opgenomen in de response bij het zoeken van points promotions.<br>Mogelijk waarden:<br>POSSIBLE,<br>NOT_POSSIBLE_DISABLED_BY_CARD_SYSTEM,<br>NOT_POSSIBLE_INVALID_CARD,<br>NOT_POSSIBLE_DATE_CONSTRAINT (indien de actie niet verzilverd kan worden op de huidige datum)<br>NOT_POSSIBLE_VOLUME_CONSTRAINT (indien er niet meer genoeg units in voorraad zijn)<br>NOT_POSSIBLE_USER_VOLUME_CONSTRAINT (indien de volume beperking voor de pashouder werd overschreden (op voorwaarde dat de UID van de pashouder gekend is))<br>NOT_POSSIBLE_POINTS_CONSTRAINT (indien de pashouder niet genoeg punten heeft (op voorwaarde dat de UID van de pashouder gekend is))<br>NOT_POSSIBLE_USER_CONSTRAINT,<br>NOT_APPLICABLE_TO_PASSHOLDER<br>NOT_POSSIBLE_NO_ACTIVE_CARD_SYSTEM,<br>NOT_POSSIBLE_KANSENSTATUUT_EXPIRED |
| picture | List<String> | afbeeldingen van de verzilveractie |