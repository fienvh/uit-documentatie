---
---

# Scholenaanbod

Onder scholenaanbod verstaan we activiteiten die door cultuurorganisaties worden georganiseerd en bedoeld zijn
- voor leerlingen (meerderheid van de evenementen)
- voor leerkrachten (vb. naschoolse vormingen)

Scholenaanbod wordt gepubliceerd op cultuurkuur.be, het cultuureducatief platform van CANON Cultuurcel en CultuurNet Vlaanderen. 

Er bestaan 3 soorten aanbod:

| Type schoolaanbod | Tijdstip | Locatie | 
| -- | -- | -- |
| Schoolvoorstellingen | x | x | 
| Rondleidingen |  | x | 
| Producties / boekbaar aanbod  |  |  | 

- **Schoolvoorstellingen** hebben zowel een tijdstip als een locatie. Het gaat bijvoorbeeld om een theatervoorstelling, gericht aan een vierde graad.
- **Rondleidingen** hebben geen specifiek tijdstip, maar wel een locatie, bijvoorbeeld een rondleiding in een museum dat vastgelegd wordt in samenspraak met gids en school.
- **Producties / boekbaar aanbod** hebben geen locatie en geen tijdstip. Dit is typisch een workshop die op de school zelf gegeven wordt.

## Specifieke onderwijsvelden

Naast de verplichte velden voor 'gewone' evenementen, zijn er specifieke, onderwijsgerelateerde velden.

### Targetaudience

Om op Cultuurkuur te verschijnen, moet een 'targetaudience' meegestuurd worden. Het is verplicht de targetaudience 'voor scholen' mee te geven. Daarnaast kan je specifiëren of het gaat om aanbod voor leerlingen of voor leerkrachten.
Meer info over de targetaudiences vind je hier terug: ```http://taxonomy.uitdatabank.be/api/domain/targetaudience/classification```

### Onderwijsniveau

Ongeacht het type event, moet ook steeds aangeduid worden voor welk niveau de voorstelling / rondleiding / productie geschikt is, bijvoorbeeld 'gewoon lager onderwijs' of 'BSO'. Er kunnen meerdere niveaus van toepassing zijn. 
De verschillende 'educationlevels' en hun taxonomie vind je hier terug: ```http://taxonomy.uitdatabank.be/api/domain/educationlevel/classification```

### Leerdoel

Ongeacht het type event, wordt aangeraden het leerdoel te vermelden, bijvoorbeeld 'kunst en cultuur' of 'actief burgerschap'.
De verschillende 'educationfields' vind je hier terug: ```http://taxonomy.uitdatabank.be/api/domain/educationfields/classification```

### Cultuurkuur-pagina

Elke organisator heeft een eigen pagina op Cultuurkuur. 
Wanneer een organisator nog geen eigen pagina heeft, dient een nieuwe pagina aangemaakt te worden, onder de ```<media/> ```-node

~~~ xml
<file>
<hlink>https://www.uitid.be/uitid/rest/page/6a5a08d8-21fb-4123-bc2c-2dd39f16fb6d</hlink>
<mediatype>culturefeed-page</mediatype>
<title>organiser</title>
<reltype>organiser</reltype>
</file>
~~~

Wanneer een organisator reeds een pagina heeft, dien je de page ID steeds mee te sturen onder de ```<media/>```-node.

