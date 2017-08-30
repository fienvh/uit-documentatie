---
jira: UIV-1891 - UIV-1957
---

# Niet relevante tijdsinformatie bij activiteiten

## Symptoom

Een activiteit toont overbodige of dubbele tijdsinformatie:

- zoals beginuur 00:00 en/of einduur 23:59
- het beginuur is identiek aan het einduur

## Oorzaak

Sinds 2017 verwachten we van organisatoren om zowel een begin- als einduur in te vullen. Je kan geen einduur opgeven zonder beginuur.

Activiteiten die een volledige dag duren, krijgen automatisch een beginuur 00:00 en einduur 23:59.

0udere activiteiten die enkel een beginuur hadden zonder einduur, werd het einduur gelijk gesteld aan het beginuur.

## Mogelijke oplossing

Voor Culturefeed-integraties werken we momenteel nog aan een oplossing om de niet relevante informatie te verbergen of te vertalen naar een meer leesbare tekststring.

Voor andere integraties kan je een gelijkaardige werkwijze hanteren.
