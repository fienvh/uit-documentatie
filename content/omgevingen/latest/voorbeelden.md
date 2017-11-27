---
---

## Voorbeelden

Grofweg gaan ontwikkelaars die integraties opzetten met de services die publiq
aanbiedt voor alle niet-productie omgevingen van hun integratie connecteren
naar de test omgeving van de service (bv. Search API). Deze bevat een relevante
dataset en kan gezien worden als een "veilige" (om wijzigingen aan de data aan
te brengen) versie van productie.

Ontwikkelaars die werken aan de services zelf die publiq aanbiedt, gaan eerder
een progressie doorheen alle omgevingen gebruiken.

### Culturefeed integratie

Wanneer door een externe ontwikkelaar een culturefeed integratie wordt opgezet,
worden vooral UiTiD en Search API gebruikt als integratiepunten. Tijdens
ontwikkeling en testen van de culturefeed integratie wordt normaal gezien
geconnecteerd naar de test omgevingen van UiTiD en Search API. Die bevatten een
dataset die zeer gelijkaardig is aan wat op productie beschikbaar is, en ook de
beschikbare featureset van deze test omgevingen is vrijwel identiek aan die van
productie.

Een externe ontwikkelaar mag de test omgevingen van UiTiD en Search API
beschouwen als stabiel en relevant voor latere integratie met productie.
Bovendien kan er zonder negatieve gevolgen data worden aangemaakt en gewijzigd.

### Toevoegen van functionaliteit aan de UiTdatabank

Een nieuwe feature voor de UiTdatabank wordt eerst door de ontwikkelaar in zijn
lokale omgeving geschreven (in een feature branch). Na unit testen, een lokale
functionele test en review wordt de feature branch gemerged in master en op de
acceptatie omgeving gedeployed.

Daar draaien automatische testen die zo compleet mogelijk de nieuwe en reeds
bestaande functionaliteit van de applicatie testen.  Daarna is deze omgeving
beschikbaar voor manuele testen door publiq.

Na positieve verificatie kan de nieuwe code worden gedeployed in de test
omgeving.  Op dat moment wordt de nieuwe feature beschikbaar voor een groter
publiek en kunnen extra testen tegen een grote dataset worden gedraaid.

Wanneer dit allemaal slaagt kan de nieuwe feature in de productie omgeving
worden gedeployed.
