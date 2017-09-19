---
---

# Installatie van de desktop applicatie voor baliemedewerkers

Baliemedewerkers werken op desktop met een JavaFX-browser. Deze browser zorgt ervoor dat e-ID- en NFC-kaarten kunnen worden uitgelezen. Op deze manier is 1 install voldoende om iedereen met hetzelfde systeem te laten werken. Overigens was er nog geen stabiele oplossing om de meest gangbare browsers (chrome, IE, Firefox) met een NFC-kaartlezer te laten communiceren.

## Installatie

### Microsoft Windows

Alle stabiele versies zijn te vinden op [http://files.uitpas.be/uitpas_browser.html](http://files.uitpas.be/uitpas_browser.html)
Er is een folder voor oudere versies en een folder voor specifieke test-versies. De rootfolder geeft recentste stabiele versies weer. 

Momenteel is **uitpas-browser-2.2.5.msi** de stabiele versie voor Windows.
De .msi file kan je gewoon openen in Windows door te dubbelklikken. Elke build van de JavaFX-browser bevat steeds een volledige Java Runtime omgeving. De JavaFx gaat by default de proxy instellingen van de browser van de user overnemen. Sinds 2.2.5-build2 is het ook mogelijk om dit handmatig in te stellen (zie gebruik).

### Mac OS X / Linux

Er is een [generische jar file](http://files.uitpas.be/uitpas_browser/for-testing/uitpas-browser-2.2.5-build2-jfx.jar) beschikbaar die met java opgestart kan worden. Op Mac OS X is de communicatie met de kaartlezer echter niet stabiel. 

## Gebruik

De JavaFX-browser is ingesteld om default te openen op [balie.uitpas.be](http://balie.uitpas.be). 

Van daar uit werkt alles zoals de website in een gewone browser zou werken met uitzondering van de input-velden:
* inlezen van e-id gegevens
* uitlezen van chipnummer NFC-kaart

## Debug-modus

Je kan de JavaFX-browser in debug-modus opstarten door in de rechterbovenhoek 3x snel achter elkaar te klikken. In de debug-modus kan men volgende bewerkingen doen:
* e-id en NFC-lezers testen
* de browser naar een andere URL wijzen
* aangesloten terminals (lees: NFC/e-ID readers) oplijsten en vergelijken met ondersteunde devices
* vanaf 2.2.5-build2 kan je handmatig proxy instellingen ingeven

