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

Voor CultureFeed-sites is code toegevoegd die de korte beschrijving stript uit de lange beschrijving.

Op overzichtspagina's, bv. zoekresultaten, wordt de korte beschrijving gebruikt.

Op detailpagina's, bv. een evenementen-pagina, wordt de korte en lange beschrijving onder elkaar weergegeven.

Ontwikkelaars die rechtstreeks CdbXML-informatie inlezen kunnen een gelijkaardige aanpak gebruiken.
