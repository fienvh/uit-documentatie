---
---

# Individuele objecten opvragen

Een voorbeeld van een object dat in de UiTdatabank werd opgeslagen is een evenement of activiteit zoals een tentoonstelling, concert of film.

De UiTdatabank is een "agenda" systeem. Volgende types objecten (of "content types", of "content classes", of "entiteiten") bestaan:

Event; een event vindt plaats op een bepaald moment op een bepaalde plek, bijv "12 okt, Master of Reality Live in de Vooruit, Gent". D.i. de core entity van de UiTdatabank. De andere twee entiteiten zijn niet meer dan ondersteunde entiteiten.
Production; producties zijn activiteiten die klaar zijn om georganiseerd te worden, bijv. een film die of theatervoorstelling dat klaar is om geprogrammeerd te worden.
Actor; organisaties, locaties en personen die aan events gerelateerd zijn, bijv. de cinemazaal, de organisator, de performer.
Event, Production en Actor objecten kunnen opgevraagd worden via de API door volgende elementen te combineren tot een URL:
(1) het UiTdatabank API base path http://build.uitdatabank.be/api/
(2) het type object (/event, /actor, /production) en
(3) de unique identifier van het object (ID).

Een key is verplicht voor elke request. Een voorbeeld van een valide request is:
http://build.uitdatabank.be/api/actor/318F2BC5-BA2D-9C88-5096BF3C69519135?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C. 

Om de ID te vinden zal jij (of je gebruiker) typisch eerst een zoekopdracht ("query") lanceren en daaruit de ID afleiden, zoals in de volgende sectie gedocumenteerd wordt.
