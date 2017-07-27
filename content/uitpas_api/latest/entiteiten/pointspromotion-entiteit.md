---
---

# PointsPromotion entiteit

|**Parameter** |**Type** |**Beschrijving** |  
 |id |Long |identificatie van de verzilveractie |  
 |title |String |titel van de verzilveractie |  
 |description1 |String |omschrijving van de verzilveractie |  
 |description2 |String |omschrijving van de verzilveractie |  
 |applicableCardSystem |List<CardSystem> |lijst van kaartsystemen waarvoor het omruilvoordeel geldig is |  
 |owningCardSystem |CardSystem |kaartsysteem waar het omruilvoordeel werd aangemaakt |  
 |cashedIn |boolean |true indien verzilveractie werd opgenomen |  
 |balies |List<Balie> |balies waar deze verzilveractie opgenomen kan worden, leeg indien iedere balie |  
 |points |int |aantal punten die nodig zijn voor de verzilveractie |  
 |creationDate |W3C date |datum wanneer de verzilveractie werd aangemaakt |  
 |cashingPeriodBegin |W3C date |begindatum van de verzilverperiode |  
 |cashingPeriodEnd |W3C date |einddatum van de verzilverperiode |  
 |publicationPeriodBegin |W3C date |begindatum van publicatie periode |  
 |publicationPeriodEnd |W3C date |einddatum van publicatie periode |  
 |inSpotlight |boolean |staat omruilvoordeel in de kijker |  
 |pictures |List<String> |afbeeldingen |  
 |validForCities |List<String> |de verzilveractie is geldig voor pashouders uit deze gemeenten |  
 |maxAvailableUnits |Integer |aantal beschikbaar, onbeperkt indien leeg |  
 |periodConstraint |PeriodConstraint |beperking op het verzilveren |  
 |unitsTaken |int |aantal keer dat de verzilveractie werd opgenomen |  
 |cashInState |String |Wordt opgenomen in de response bij het zoeken van points promotions.  
 Mogelijk waarden:  
 POSSIBLE,  
 NOT\_POSSIBLE\_DISABLED\_BY\_CARD\_SYSTEM,  
 NOT\_POSSIBLE\_INVALID\_CARD,  
 NOT\_POSSIBLE\_DATE\_CONSTRAINT (indien de actie niet verzilverd kan worden op de huidige datum)  
 NOT\_POSSIBLE\_VOLUME\_CONSTRAINT (indien er niet meer genoeg units in voorraad zijn)  
 NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT (indien de volume beperking voor de pashouder werd overschreden (op voorwaarde dat de UID van de pashouder gekend is))  
 NOT\_POSSIBLE\_POINTS\_CONSTRAINT (indien de pashouder niet genoeg punten heeft (op voorwaarde dat de UID van de pashouder gekend is))  
 NOT\_POSSIBLE\_USER\_CONSTRAINT,  
 NOT\_APPLICABLE\_TO\_PASSHOLDER  
 NOT\_POSSIBLE\_NO\_ACTIVE\_CARD\_SYSTEM,  
 NOT\_POSSIBLE\_KANSENSTATUUT\_EXPIRED |  
 |picture |List<String> |afbeeldingen van de verzilveractie |