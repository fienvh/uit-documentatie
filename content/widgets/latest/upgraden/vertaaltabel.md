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

| Betekenis | SAPI 1 | SAPI 3 | Info | 
| -- | -- | -- | -- |
| cdbid | cdbid=0ce16653-9260-4e4a-9d77-aba82aceee2b | id:0ce16653-9260-4e4a-9d77-aba82aceee2b |  |
| Afbeelding aanwezig | hasimage=true | mediaObjectsCount:>=1 |  |
| Eventtype (naam) | type="concert" | terms.label:"concert" |  |
| Eventtype (id) | type=0.50.4.0.0 | terms.id:0.50.4.0.0 | [Info](#identifiers) |
| Thema (naam) | thema="Pop en Rock" |terms.label:"Pop en Rock" |  |
| Thema (id) | thema=1.8.3.1.0 | terms.id:1.8.3.1.0 | [Info](#identifiers) |
| Rubrieken | heading="muziek" | nvt | [Info](#rubrieken) |
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
* Neem dan een kijkje op de [documentatiepagina van SAPI 3](http://documentatie.uitdatabank.be/content/search_api_3/latest/getting-started/). Voor widgets dien je steeds gebruik te maken van de syntax onder ‘Advanced queries’.
* Of neem contact op met onze [helpdesk](mailto:vragen@uitdatabank.be)

<a id="identifiers"></a>
<h2>Identifiers</h2>

Een overzicht van alle identifiers vind je op ```http://taxonomy.uitdatabank.be/api/domain```
Om de taxonomy in detail te bekijken voeg je het ```/{ID}/classification``` toe, bijvoorbeeld: ```http://taxonomy.uitdatabank.be/api/domain/eventtype/classification```

<a id="rubrieken"></a>
<h2>Rubrieken</h2>

In SAPI 1 bestonden rubrieken (zoals ‘muziek’). De rubrieken worden niet meer als vaste elementen aangeboden, maar kunnen wel zelf nagebouwd worden door verschillende types en thema’s binnen een query te combineren. 

Hieronder vind je een overzicht van de rubrieken uit SAPI 1 en hun overeenkomstige vertaling in SAPI 3 syntax

| Rubriek | SAPI 1 | SAPI 3 | 
| -- | -- | -- | 
| Evenementen | heading=1 | terms.id:(0.5.0.0.0 OR 0.6.0.0.0 OR 0.12.0.0.0 OR 0.28.0.0.0 OR 0.37.0.0.0 OR 0.52.0.0.0 OR 0.56.0.0.0 OR 0.19.0.0.0) | 
| Feesten | heading=2 | -- | 
| Festivals | heading=3 | -- | 
| Markten & kermissen | heading=4 | -- | 
| Film | heading=5 | -- | 
| Andere (evenementen) | heading=6 | -- | 
| Expo & bezienswaardigheden | heading=7 | -- | 
| Beeldende kunsten | heading=8 | -- | 
| Fotografie | heading=9 | -- | 
| Mode & design | heading=10 | -- | 
| Erfgoed & volkscultuur | heading=11 | -- | 
| Architectuur & monumenten | heading=12 | -- | 
| Tuinen & parken | heading=13 | -- | 
| Muziek | heading=14 | -- | 
| Pop & rock | heading=15 | -- | 
| Dance & techno | heading=16 | -- | 
| Jazz & blues | heading=17 | -- | 
| Wereldmuziek | heading=18 | -- | 
| Amusement & kleinkunst | heading=19 | -- | 
| Klassiek | heading=20 | -- | 
| Andere (muziek) | heading=21 | -- | 
| Podium & literatuur | heading=22 | -- | 
| Theater & dans | heading=23 | -- | 
| Literatuur & humor | heading=24 | -- | 
| Cursussen en lezingen | heading=25 | -- | 
| Van creatief tot kunst | heading=26 | -- | 
| Van talen tot koken | heading=27 | -- | 
| Van computer tot techniek | heading=28 | -- | 
| Van mens tot maatschappij | heading=29 | -- | 
| Van natuur tot gezondheid | heading=30 | -- | 
| Sport | heading=31 | -- | 
| Uitstappen en wandelingen | heading=32 | -- | 
| Uitgaan en feesten | heading=33 | -- | 

Staat je rubriek of heading er niet tussen? Dan neem je best contact op met [vragen@uitdatabank.be](mailto:vragen@uitdatabank.be).

<a id="nis_codes"></a>
<h2>NIS-codes</h2>

Voor het geografisch afbakenen van je query kan je in SAPI 3 gebruik maken van NIS-codes. De verschillende NIS-codes vind je op ```http://documentatie.uitdatabank.be/content/search_api_3/latest/searching/geosearch/list_of_shapes/```
