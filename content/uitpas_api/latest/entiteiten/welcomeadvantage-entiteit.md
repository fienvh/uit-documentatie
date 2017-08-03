---
---

# WelcomeAdvantage entiteit



|| | | |
|id| Long| identificatie van het welkomstvoordeel| |
|title| String| titel van het welkomstvoordeel| |
|description1| String| omschrijving van het welkomstvoordeel| |
|description2| String| omschrijving van het welkomstvoordeel| |
|cashedIn| boolean| true indien het welkomstvoordeel werd verzilverd| |
|cashingDate| W3CDate| datum van verzilvering. (enkel ingevuld indien cashedIn = true)| |
|balies| List<Balie>| balies waar het welkomstvoordeel verzilverd kan worden, leeg indien iedere balie| |
|points| int| aantal punten die nodig zijn voor het verzilveren, bij een welkomstvoordeel is dit steeds 0| |
|creationDate| W3C date| datum wanneer welkomstvoordeel werd aangemaakt| |
|cashingPeriodBegin| W3C date| begindatum van de verzilverperiode| |
|cashingPeriodEnd| W3C date| einddatum van de verzilverperiode| |
|grantingPeriodBegin| W3CDate| begindatum van de toekenningsperiode| |
|grantingPeriodEnd| W3CDate| einddatum van de toekenningsperiode| |
|validForCities| List<String>| het welkomstvoordeel is geldig voor pashouders uit deze gemeenten| |
|maxAvailableUnits| Integer| aantal beschikbaar, onbeperkt indien leeg| |
|unitsTaken| int| aantal keer dat het welkomstvoordeel werd toegekend aan een pashouder||

