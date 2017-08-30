---
jira: UIV-1890
---

# Dubbele beschrijving van activiteiten

## Symptoom

Dubbele tekst in de beschrijving van een activiteit.

## Oorzaak

Sinds 2017 voeren organisatoren maar één beschrijving meer in. Er is geen korte en lange beschrijving meer.

De korte beschrijving die je terugvindt in CdbXML wordt automatisch gegenereerd en bevat de eerste X karakters van de tekst.

Als zowel de korte en lange beschrijving onder elkaar worden weergegeven, staat er tekst dubbel.

## Mogelijke oplossing

Voor Culturefeed-sites is sinds versie 3.10 [een instelling toegevoegd](https://github.com/cultuurnet/culturefeed/pull/155/ "Check pull request on Github for more details") die ervoor zorgt dat de eerste volledige paragraaf van de lange beschrijving gebruikt wordt als korte beschrijving zonder dat deze op een willekeurige plaats afgebroken wordt en zich herhaalt in de lange beschrijving. 

We vullen hier de huidige variabelen `shortdescription` en `longdescription` mee op om de oplossing backward compatible te maken voor bestaande integraties. Deze instelling staat default aan, maar kan je indien gewenst dus uitschakelen.

Ontwikkelaars die rechtstreeks CdbXML-informatie inlezen kunnen een gelijkaardige aanpak gebruiken. 

In beide gevallen is de korte beschrijving enkel nog relevant om op overzichtspagina's (bv. zoekresultaten) te gebruiken, waar een gebruiker sowieso moet doorklikken om meer details te kunnen raadplegen. Voor de detailpagina van een evenement of locatie kan je in beide gevallen dus ook enkel de longdescription gebruiken. Deze bevat de volledige beschrijving en kan je dus naar wens zelf inkorten, opsplitsen, open- en dichtklappen,...
