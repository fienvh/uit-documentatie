---
---

# Scholenaanbod

Scholenaanbod wordt gepubliceerd op cultuurkuur.be, het cultuureducatief platform van CANON Cultuurcel en CultuurNet Vlaanderen. 

## Generieke velden

Om educatief aanbod aan te maken of door te sturen naar UiTdatabank, dien je te letten op onderstaande zaken. 

### Targetaudience

Om op Cultuurkuur te verschijnen, moet een event de targetaudience 'scholen' meekrijgen. 
Meer info over de targetaudiences vind je hier terug: ```http://taxonomy.uitdatabank.be/api/domain/targetaudience/classification```

~~~ xml
<term createdby="CultuurNet" creationdate="2013-03-26T20:53:07" domain="targetaudience" enabled="true" id="2.1.3.0.0" label="Scholen" labelnl="Scholen" labelfr="Écoles" labelen="Schools" labelde="Schule" show="true" sort="15"/>
~~~

### Niveau

Ongeacht het type event, moet steeds aangeduid worden voor welk niveau de voorstelling/rondleiding/productie geschikt is, bijvoorbeeld 'gewoon lager onderwijs' of 'BSO'. Er kunnen meerdere niveaus van toepassing zijn. 
De verschillende 'educationlevels' en hun taxonomie vind je hier terug: ```http://taxonomy.uitdatabank.be/api/term```

### Leerdoel

Ongeacht het type event, moet steeds het leerdoel vermeld worden, bijvoorbeeld 'kunst en cultuur' of 'taal'.
De verschillende 'educationfields' vind je hier terug:  ```http://taxonomy.uitdatabank.be/api/term```

## Specifieke velden

Er bestaan 3 soorten educatief aanbod:

| Type schoolaanbod | Tijdstip | Locatie | 
| -- | -- | -- |
| Schoolvoorstellingen | x | x | 
| Rondleidingen |  | x | 
| Producties  | x |  | 

- **Schoolvoorstellingen** hebben zowel een tijdstip als een locatie. Het gaat bijvoorbeeld om een theatervoorstelling, gericht aan een vierde graad.
- **Rondleidingen** hebben geen specifiek tijdstip, maar wel een locatie, bijvoorbeeld een rondleiding in een museum dat vastgelegd wordt in samenspraak met gids en school.
- **Producties** hebben geen locatie en geen tijdstip. Dit is een typisch evenement waarbij het evenement naar de school komt. 
