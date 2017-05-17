---
---

# Voordelen

Promotion entiteit

private CashInState cashInState;

| Parameter | Type | Beschrijving |
| --- | --- | --- |
| id | Long | identificatie van de promotie |
| title | String | titel van de promotie |
| description1 | String | omschrijving van de promotie |
| description2 | String | omschrijving van de promotie |
| points | Decimal | punten nodig voor het verzilveren van de promotie |
| periodConstraint | PeriodConstraint | beperking voor het verzilveren van de promotie |
| creationDate | W3C date | datum aanmaak van de promotie |
| cashingPeriodBegin | W3C date | startdatum van de verzilverperiode |
| cashingPeriodEnd | W3C date | einddatum van de verzilverperiode |
| picture | List<String> | afbeeldingen bij de promotie |
| maxAvailableUnits | Integer | beschikbaarheid van de promotie |
| unitsTaken | Integer | aantal keer dat de promotie is verzilverd |
| inSpotlight | boolean | true indien promotie in de kijker staat |
| holdsAccount | OnlineAccount | gekoppelde online accounts van de User |
| cashInState | POSSIBLE, NOT_POSSIBLE_DATE_CONSTRAINT, NOT_POSSIBLE_VOLUME_CONSTRAINT, NOT_POSSIBLE_USER_VOLUME_CONSTRAINT, NOT_POSSIBLE_POINTS_CONSTRAINT, NOT_POSSIBLE_USER_CONSTRAINT | geeft aan of de promotie door een gebruiker verzilverd kan worden |
