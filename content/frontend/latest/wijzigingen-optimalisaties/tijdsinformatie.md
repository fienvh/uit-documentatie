---
jira: UIV-1891 - UIV-1957
---

# Niet relevante tijdsinformatie bij activiteiten

## Symptoom

Een activiteit toont overbodige of dubbele tijdsinformatie:

- beginuur 00:00 en/of einduur 23:59
- het beginuur is identiek aan het einduur
- een reeks aaneensluitende dagen met beginuur 00:00

## Oorzaak

Sinds 2017 verwachten we van organisatoren om zowel een begin- als einduur in te vullen. Je kan geen einduur opgeven zonder beginuur.

Activiteiten die een volledige dag duren, krijgen automatisch een beginuur 00:00 en einduur 23:59.

Oudere activiteiten die enkel een beginuur hadden zonder einduur, werd het einduur gelijk gesteld aan het beginuur.

Het is sinds 2017 mogelijk om kalenderinfo aan een activiteit toe te voegen die niet compatibel is met het cdbXML-formaat: één of meerdere periodes met een start- en einduur. Bijvoorbeeld een festival met starttijdstip op vrijdag om 20:00 en eindtijdstip op zondag om 23:30: in cdbXML wordt deze periode weggeschreven door een opsomming van alle dagen die binnen deze periode vallen.

## Mogelijke oplossing

Voor Culturefeed-integraties werken we momenteel nog aan een oplossing om de niet relevante informatie te verbergen of te vertalen naar een meer leesbare tekststring.

Voor andere integraties kan je een gelijkaardige werkwijze hanteren.
