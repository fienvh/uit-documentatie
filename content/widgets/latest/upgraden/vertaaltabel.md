---
---

# Vertaaltabel SAPI1 naar SAPI3
## Context

In april 2018 lanceerde publiq haar nieuwe generatie widgets (v3). Binnen de nieuwe widgetbouwer is een stap voorzien die je toelaat je bestaande (v2)-widget(s) te upgraden naar de nieuwe versie. 

De nieuwe generatie widgets zijn geënt op nieuwere technologieën: Zo maken ze gebruik van SAPI 3 (JSON-ld), terwijl widgets versie 2 gebruik maken van SAPI 1 (cdbXML).

Tijdens het upgradeproces worden je oude queries (in SAPI 1-syntax) automatisch gekopieerd maar niet vertaald naar SAPI 3.  De queries vind je terug in volgende blokken onder _extra parameters_:
* Zoekbox
* Zoekresultaten
* Tips

Deze queries dien je zelf nog te vertalen. Onderstaande vertaaltabel helpt je daarbij.

## Vertaaltabel
Hieronder vind je een overzicht van veel gebruikte attributen binnen de widgets, met hun overeenkomstige syntax binnen SAPI 1 en SAPI 3.  

| Betekenis | SAPI 1 | SAPI 3 | Meer info | 
| -- | -- | -- | -- |
| cdbid | cdbid=0ce16653-9260-4e4a-9d77-aba82aceee2b | id:0ce16653-9260-4e4a-9d77-aba82aceee2b |  |
| Eventtype (naam) | type="concert" | terms.label:"concert" |  |
| Eventtype (id) | type=0.50.4.0.0 | terms.id:0.50.4.0.0 |  |
| Thema (naam) | thema="Pop en Rock" |terms.label:"Pop en Rock" |  |
| Thema (id) | thema=1.8.3.1.0 | terms.id:1.8.3.1.0 |  |
| Rubrieken | heading="muziek" | nvt | Info |
| Provincie (naam) | regio=Gent | regions:reg-Gent |  |
| Stad of gemeente (naam) | city=Gent | regions:gem-Gent |  |
| Stad of gemeente (nis) | nvt | regions:nis-44021-Z  | [Info](#nis_codes) |
| Stad of gemeente (postcode) | zip=9000 | address.\*.postalCode:9000  |  |
| labels | k="ook voor kinderen" | labels:"ook voor kinderen" |  |
| leeftijd (minimum) | agefrom=6 | typicalAgeRange:[6 TO *] |  |
| leeftijd (maximum) | ageto=10 | typicalAgeRange:[* TO 10] |  |
| leeftijd (range) | agefrom=6&ageto=10| typicalAgeRange:[6 TO 10] |  |
| prijs (exact) | pricevalue=10 | price:10 |  |
| prijs (range) | privevalue=10 | price:[* TO *]|  |
| organisatie (naam)| organiser="Democrazy" | organizer.name:"Democrazy" |  |
| organisatie (id) | organiser=D04BE067-FBE7-6633-2351893716796CB5 | organizerId:D04BE067-FBE7-6633-2351893716796CB5|  |
| locatie (naam)| location="Botanique" | location.name:"Botanique" |  |
| locatie (id)| location=2bb557aa-3d82-4494-8496-fc7c8f4a2828 | locationId:2bb557aa-3d82-4494-8496-fc7c8f4a2828|  |
| vrije zoek| q="Radiohead" | text:"Radiohead" |  |

Volstaat bovenstaande vertaaltabel niet om je (complexe) SAPI 1-query te vertalen? 
* Neem dan een kijkje op de [documentatiepagina van SAPI 3](link SAPI 3 documentatie). Voor widgets dien je steeds gebruik te maken van de syntax onder ‘Advanced queries’.
* Of neem contact op met onze [helpdesk](mailto:vragen@uitdatabank.be)

## Identifiers
Een overzicht van alle identifiers vind je op ```http://taxonomy.uitdatabank.be/api/domain```
Om de taxonomy in detail te bekijken voeg je het ```/{ID}/classification``` toe, bijvoorbeeld: ```http://taxonomy.uitdatabank.be/api/domain/eventtype/classification```

## Headings 
In SAPI 1 bestonden rubrieken (zoals ‘muziek’). De rubrieken worden niet meer als vaste elementen aangeboden, maar kunnen wel zelf nagebouwd worden door verschillende types en thema’s binnen een query te combineren. 

## Hasimage
In SAPI 1 was het mogelijk te zoeken op events waar een afbeelding aanhangt via de parameter hasimage=true. Deze functionaliteit is niet meer voorzien in SAPI 3. Aanbod zonder afbeelding kan je via de widgets voorzien van een standaardafbeelding. 

<a id="nis_codes"></a>
<h2>NIS-codes</h2>

Voor het geografisch afbakenen van je query kan je in SAPI 3 gebruik maken van NIS-codes. De verschillende NIS-codes vind je op ```http://documentatie.uitdatabank.be/content/search_api_3/latest/searching/geosearch/list_of_shapes/```






