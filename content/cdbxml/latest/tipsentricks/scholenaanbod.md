---
---

# Scholenaanbod

Onder scholenaanbod verstaan we activiteiten die door cultuurorganisaties worden georganiseerd en specifiek bedoeld zijn
- voor leerlingen (meerderheid van de evenementen)
- voor leerkrachten (vb. naschoolse vormingen)

Scholenaanbod wordt enkel gepubliceerd op cultuurkuur.be, het cultuureducatief platform van CANON Cultuurcel en CultuurNet Vlaanderen. 

Er bestaan 3 soorten aanbod:

| Type schoolaanbod | Tijdstip | Locatie | 
| -- | -- | -- |
| Schoolvoorstellingen | x | x | 
| Rondleidingen |  | x | 
| Producties / boekbaar aanbod  |  |  | 

- **Schoolvoorstellingen** hebben zowel een tijdstip als een locatie. Het gaat bijvoorbeeld om een theatervoorstelling, gericht aan een vierde graad.
- **Rondleidingen** hebben geen specifiek tijdstip, maar wel een locatie, bijvoorbeeld een rondleiding in een museum dat vastgelegd wordt in samenspraak met gids en school.
- **Producties / boekbaar aanbod** hebben geen locatie en geen tijdstip. Dit is typisch een workshop die op de school zelf gegeven wordt.

## Privaat aanbod

Scholenaanbod richt zich niet tot het grote publiek, maar enkel tot leerlingen en leerkrachten. Om te verschijnen op cultuurkuur.be moet de rootnode de property ```private=true``` bevatten zoals in onderstaand voorbeeld:

```
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd">
    <event availablefrom="2016-01-25T00:00:00" private="true">
</cdbxml>
```

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
De verschillende 'educationfields' vind je hier terug: ```http://taxonomy.uitdatabank.be/api/domain/educationfield/classification```

### Cultuurkuur-pagina

Elke organisator heeft een eigen pagina op Cultuurkuur. 
Wanneer een organisator nog geen eigen pagina heeft, dient een nieuwe pagina aangemaakt te worden, onder de ```<media/> ```-node

~~~ xml
<media>
<file>
<hlink>https://www.uitid.be/uitid/rest/page/6a5a08d8-21fb-4123-bc2c-2dd39f16fb6d</hlink>
<mediatype>culturefeed-page</mediatype>
<title>organiser</title>
<reltype>organiser</reltype>
</file>
</media>
~~~

Wanneer een organisator reeds een pagina heeft, dien je de page ID steeds mee te sturen onder de ```<media/>```-node.

