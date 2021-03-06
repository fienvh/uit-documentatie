---
---

# Zoekresultaten

Via zoekresultaten bouw je een lijst van (gevonden) activiteiten. Dit blok bevat ook de instellingen voor een detailpagina van een activiteit.

## Naam zoekresultaten
* **Je selecteerde** stelt je in staat je zoekresultaten-pagina een naam te geven. Dit is enkel relevant indien je van plan bent een widget te maken met meerdere zoekboxen en/of zoekresultaten.

## Algemeen
* **Huidige zoekopdracht tonen** bepaalt of de zoekopdracht uit de zoekbox getoond moet worden of niet
* **Verbergfilters** laten je toe een surfer eenvoudig bepaald aanbod te verbergen:
  -   langlopend aanbod: alle evenementen die voor een bepaalde periode lopen, al dan niet met openingsuren (bv. een tijdelijke tentoonstelling)
  -   permanente activiteiten: alle evenementen zonder start of eindddatum, al dan niet met openingsuren (bv. een momument)
Je kan deze filters aan- of uitvinken.

## Header
Bepaal welke tekst en/of afbeelding er in de header verschijnt.

## Lijstelementen
Bepaal welke elementen (informatie) zichtbaar zijn in de lijstweergave van je evenementen. Je kan deze elementen aan -of afvinken:
* Type van je activiteit
* Vlieg-logo
* UiTPAS-logo
* Beschrijving en aantal karakters van de beschrijving. Als je het aantal karakters invult dient de waarde minstens 1 te zijn.
* Waar
* Organisatie
* Wanneer
* Leeftijd
* Toegang: toon of een evenement enkel voor leden is
* Taaliconen
* Afbeelding en de breedte / hoogte van de afbeelding
* Positie van de afbeelding
* Weergeven van (specifieke) labels. **Tip**: als je meerdere labels wil toevoegen, dien je die te scheiden door middel van een komma.
* Toegankelijkheid: Toon welke [toegankelijkheidsvoorzieningen](https://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/voorzieningen.html) wel en niet aanwezig zijn op een evenement. 
* Leeslink

## Detailpagina
Bepaal welke elementen (informatie) zichtbaar zijn op de detailpagina van je evenementen. Je kan deze elementen aan -of afvinken:
* Google Maps kaart
* Prijsinformatie
* Reserveringen
* Contact
* UiTPAS-voordelen
* Taalwisselaar
* Deelknoppen voor social media
* Terugknop, en de URL daarvan

De overige elementen zijn identiek aan de lijstelementen.

## Extra parameters
### Query
Bepaal de query voor de zoekresultaten. Hiervoor maak je gebruik van de [SAPI3-syntax]({% link content/search_api_3/latest/start.md %}).

### Ledenaanbod
Bepaal welk soort aanbod (publieksaanbod / ledenaanbod) de widget mag tonen: 
* Tonen van publieksaanbod: laat de checkbox _doorzoek ook ledenaanbod_ onaangevinkt
* Tonen van publieksaanbod én ledenaanbod: duid het de checkbox _doorzoek ook ledenaanbod_ aan.
* Tonen van ledenaanbod: duid de checkbox _doorzoek ook ledenaanbod_ aan en vul in het queryveld de query 
`audienceType:members` in. 

### Buitenlands aanbod
Binnen de extra parameters kan je ervoor kiezen om
* Enkel Belgisch aanbod te doorzoeken
* Enkel Nederland aanbod te doorzoeken
* Aanbod van beide landen te doorzoeken
