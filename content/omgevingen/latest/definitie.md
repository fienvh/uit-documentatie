---
---

## Definitie van de aangeboden omgevingen

![omgevingen](/img/omgevingen.png "omgevingen")

### Development

De development omgeving situeert zich op de computer van een ontwikkelaar. Deze
omgeving benadert qua ondersteunende componenten zoveel mogelijk de andere
omgevingen (door gebruik van virtuele machines bv.). Het is een volledig
afgesloten zandbak die de ontwikkelaar de vrijheid geeft om zonder risico
nieuwe functionaliteit te ontwikkelen.

Meestal wordt deze functionaliteit ontwikkeld in aparte "feature branches", die
de wijzigingen isoleren en toelaten om duidelijke reviews te laten doen door
andere ontwikkelaars. Na review wordt de code gewoonlijk gemerged in de master
branch van het versiebeheer systeem, en kan het deployment proces beginnen. Bij
features die moeilijk in isolatie te testen zijn (integratie met externe
systemen) wordt soms in volgende omgevingen (bv.  acceptatie) nog verder
gebruik gemaakt van de feature branches. Dit gebeurt altijd in onderling
overleg.

De applicatiedata kan via een gescript proces worden toegevoegd of kan door de
ontwikkelaar zelf worden ingevoerd.

publiq voorziet voor de verschillende projecten een relevante development
omgeving en ondersteunt die ook.

### Acceptatie

De eerste stap in deployment is de acceptatie omgeving. Hier worden alle nodige
stappen uitgevoerd om de applicatie beschikbaar te krijgen op deze omgeving.
In de regel wordt de code uit de master branch hiervoor gebruikt. In onderling
overleg kan hiervan afgeweken worden (integratie met externe systemen
noodzakelijk, waardoor geen functionele testen kunnen gebeuren in isolatie).

De applicatiedata in deze omgeving wordt via een gescript proces toegevoegd en
wordt regelmatig opgefrist. Extra data toevoegen is mogelijk. Als die data
nodig is om features te testen moet die ook worden toegevoegd aan het script
dat voor het opfrissen zorgt. Zo kan verzekerd worden dat ook na een refresh
de nodige data aanwezig blijft.

Na deployment worden in deze omgeving een reeks automatische testen (correcte
werking nieuwe features, waken over regressies) uitgevoerd. Daarna wordt deze
omgeving door publiq gebruikt om functionele testen uit te voeren op de
beperkte dataset.

### Testing

Na validatie van de testen in de acceptatie omgeving wordt de applicatie
gedeployed naar de test omgeving, mogelijk na merge in de master branch. Op
deze omgeving wordt de nieuwe functionaliteit beschikbaar voor externe
integratoren, partners.

De applicatiedata in deze omgeving is een geanonimiseerde kopie van de
productie data. Dit laat toe om naast puur functionele testen ook relevante
performantietesten, bulkacties, ... uit te voeren. Er kan natuurlijk ook extra
data worden toegevoegd. Aangezien een deel van de data nogal tijdsafhankelijk
is (events) wordt deze dataset periodiek opgefrist.

### Productie

Het doel van deze omgeving is triviaal duidelijk. Het gaat hier om de omgeving
waar alle eindgebruikers op werken. Bij release van nieuwe features aan de
producten is dit ook het eindpunt van alle deployment.

Op alle andere omgevingen worden testen uitgevoerd die het vertrouwen in de
applicatie moeten vergroten, op de productie omgeving gebeurt dit niet. Een
productie deploy wordt gestart nadat op de testomgeving de voorziene testen
slagen.
