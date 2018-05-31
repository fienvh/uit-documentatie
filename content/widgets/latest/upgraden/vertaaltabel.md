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
| Rubrieken | heading="muziek" | Zie info | [Info](#rubrieken) |
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
| tijdelijke evenementen | temporary=true | calendarType:single OR calendarType:multiple |  |
| permanente evenementen | temporary=fale | calenderType:permanent |  |

Volstaat bovenstaande vertaaltabel niet om je (complexe) SAPI 1-query te vertalen? 
* Neem dan een kijkje op de [documentatiepagina van SAPI 3](http://documentatie.uitdatabank.be/content/search_api_3/latest/getting-started/). Voor widgets dien je steeds gebruik te maken van de syntax onder ‘Advanced queries’.
* Of neem contact op met onze [helpdesk](mailto:vragen@uitdatabank.be)

<a id="identifiers"></a>
<h2>Identifiers</h2>

Een overzicht van alle identifiers vind je hier: 

* [type aanbod](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_aanbod/)
* [thema's](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/themas/)

<a id="rubrieken"></a>
<h2>Rubrieken</h2>

In SAPI 1 bestonden rubrieken (zoals ‘muziek’). De rubrieken worden niet meer als vaste elementen aangeboden, maar kunnen wel zelf nagebouwd worden door verschillende types en thema’s binnen een query te combineren. 

Hieronder vind je een overzicht van de rubrieken uit SAPI 1 en hun overeenkomstige vertaling in SAPI 3 syntax

| Rubriek | SAPI 1 | SAPI 3 | 
| -- | -- | -- | 
| Evenementen | heading=1 | terms.id:(0.5.0.0.0 OR 0.6.0.0.0 OR 0.12.0.0.0 OR 0.28.0.0.0 OR 0.37.0.0.0 OR 0.52.0.0.0 OR 0.56.0.0.0 OR 0.19.0.0.0) | 
| Feesten | heading=2 | terms.id:0.28.0.0.0 | 
| Festivals | heading=3 | terms.id:0.5.0.0.0 | 
| Markten & kermissen | heading=4 | terms.id:(0.28.0.0.0 OR 0.37.0.0.0) | 
| Film | heading=5 | terms.id:(0.5.0.0.0 OR 0.50.6.0.0) AND terms.id:(1.1.0.0.0 OR 1.7.1.0.0 OR 1.7.2.0.0 OR 1.7.3.0.0 OR 1.7.4.0.0 OR 1.7.6.0.0 OR 1.7.7.0.0 OR 1.7.8.0.0 OR 1.7.10.0.0 OR 1.7.11.0.0 OR 1.7.12.0.0 OR 1.7.13.0.0 OR 1.7.15.0.0 OR 1.7.14.0.0) | 
| Andere (evenementen) | heading=6 | terms.id:(0.6.0.0.0 OR 0.12.0.0.0 OR 0.52.0.0.0 OR 0.56.0.0.0) | 
| Expo & bezienswaardigheden | heading=7 | terms.id:(0.0.0.0.0 OR 0.14.0.0.0 OR 0.15.0.0.0 OR 0.16.0.0.0) | 
| Beeldende kunsten | heading=8 | terms.id:0.0.0.0.0 AND terms.id:(1.0.1.0.0 OR 1.0.2.0.0 OR 1.0.3.0.0 OR 1.0.4.0.0 OR 1.0.5.0.0 OR 1.0.9.0.0 OR 1.1.0.0.0) | 
| Fotografie | heading=9 | terms.id:0.0.0.0.0 AND terms.id:1.0.6.0.0 | 
| Mode & design | heading=10 | terms.id:0.0.0.0.0 AND terms.id:(1.2.2.0.0 OR 1.49.0.0.0) | 
| Erfgoed & volkscultuur | heading=11 | terms.id:(0.0.0.0.0 OR 0.7.0.0.0 OR 0.14.0.0.0 OR 0.15.0.0.0 OR 0.56.0.0.0) AND terms.id:(1.11.0.0.0 OR 1.40.0.0.0) | 
| Architectuur & monumenten | heading=12 | terms.id:(0.0.0.0.0 OR 0.7.0.0.0 OR 0.14.0.0.0 OR 0.56.0.0.0) AND terms.id:1.2.1.0.0 | 
| Tuinen & parken | heading=13 | terms.id:(0.15.0.0.0 OR 0.16.0.0.0) | 
| Muziek | heading=14 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:(1.4.0.0.0 OR 1.5.0.0.0 OR 1.8.1.0.0 OR 1.8.2.0.0 OR 1.8.3.1.0 OR 1.8.3.2.0 OR 1.8.3.3.0 OR 1.8.3.5.0 OR 1.8.4.0.0) | 
| Pop & rock | heading=15 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:(1.8.3.1.0 OR 1.8.3.2.0) | 
| Dance & techno | heading=16 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:1.8.3.3.0 | 
| Jazz & blues | heading=17 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:1.8.2.0.0 | 
| Wereldmuziek | heading=18 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:1.8.4.0.0 | 
| Amusement & kleinkunst | heading=19 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:1.8.3.5.0 | 
| Klassiek | heading=20 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) AND terms.id:(1.5.0.0.0 OR 1.8.1.0.0) | 
| Andere (muziek) | heading=21 | terms.id:(0.5.0.0.0 OR 0.28.0.0.0 OR 0.50.4.0.0 OR 0.56.0.0.0) | 
| Podium & literatuur | heading=22 | terms.id:(0.5.0.0.0 OR 0.54.0.0.0 OR 0.55.0.0.0) AND terms.id:(1.3.1.0.0 OR 1.3.4.0.0 OR 1.3.5.0.0 OR 1.3.10.0.0 OR 1.4.0.0.0 OR 1.5.0.0.0 OR 1.9.1.0.0 OR 1.9.2.0.0 OR 1.9.3.0.0 OR 1.9.5.0.0 OR 1.10.0.0.0 OR 1.10.5.0.0 OR 1.10.8.0.0 OR 1.10.11.0.0 OR 1.10.12.0.0) | 
| Theater & dans | heading=23 | terms.id:(0.5.0.0.0 OR 0.54.0.0.0 OR 0.55.0.0.0) AND terms.id:(1.3.1.0.0 OR 1.3.4.0.0 OR 1.3.5.0.0 OR 1.3.10.0.0 OR 1.4.0.0.0 OR 1.5.0.0.0 OR 1.9.1.0.0 OR 1.9.2.0.0 OR 1.9.3.0.0 OR 1.9.5.0.0) | 
| Literatuur & humor | heading=24 | terms.id:(0.3.2.0.0 OR 0.5.0.0.0 OR 0.55.0.0.0) AND terms.id:(1.3.10.0.0 OR 1.10.0.0.0 OR 1.10.5.0.0 OR 1.10.8.0.0 OR 1.10.11.0.0 OR 1.10.12.0.0) | 
| Cursussen en lezingen | heading=25 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) | 
| Van creatief tot kunst | heading=26 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) AND terms.id:(1.0.1.0.0 OR 1.0.2.0.0 OR 1.0.3.0.0 OR 1.0.4.0.0 OR 1.0.5.0.0 OR 1.0.6.0.0 OR 1.0.9.0.0 OR 1.1.0.0.0 OR 1.2.1.0.0 OR 1.2.2.0.0 OR 1.3.1.0.0 OR 1.3.4.0.0 OR 1.3.5.0.0 OR 1.3.10.0.0 OR 1.4.0.0.0 OR 1.5.0.0.0 OR 1.7.1.0.0 OR 1.7.2.0.0 OR 1.7.3.0.0 OR 1.7.4.0.0 OR 1.7.6.0.0 OR 1.7.7.0.0 OR 1.7.8.0.0 OR 1.7.10.0.0 OR 1.7.11.0.0 OR 1.7.12.0.0 OR 1.7.13.0.0 OR 1.7.15.0.0 OR 1.7.14.0.0 OR 1.8.1.0.0 OR 1.8.2.0.0 OR 1.8.3.1.0 OR 1.8.3.2.0 OR 1.8.3.3.0 OR 1.8.3.5.0 OR 1.8.4.0.0 OR 1.17.0.0.0 OR 1.40.0.0.0 OR 1.41.0.0.0 OR 1.42.0.0.0 OR 1.49.0.0.0) | 
| Van talen tot koken | heading=27 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) AND terms.id:(1.10.0.0.0 OR 
1.10.5.0.0 OR 1.65.0.0.0) | 
| Van computer tot techniek | heading=28 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) AND terms.id:1.21.0.0.0 | 
| Van mens tot maatschappij | heading=29 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) AND terms.id:(1.11.0.0.0 OR 1.25.0.0.0 OR 1.37.0.0.0 OR 1.37.2.0.0 OR 1.43.0.0.0 OR 1.44.0.0.0 OR 1.52.0.0.0 OR 1.61.0.0.0) | 
| Van natuur tot gezondheid | heading=30 | terms.id:(0.3.1.0.0 OR 0.3.2.0.0 OR 0.3.3.0.0) AND terms.id:(1.37.1.0.0 OR 1.62.0.0.0 OR 1.63.0.0.0 OR 1.64.0.0.0 OR 1.65.0.0.0) | 
| Sport | heading=31 | terms.id:(0.0.0.0.0 OR 0.3.1.0.0 OR 0.3.3.0.0 OR 0.6.0.0.0 OR 0.12.0.0.0 OR 0.19.0.0.0 OR 0.50.21.0.0 OR 0.57.0.0.0 OR 0.59.0.0.0) AND terms.id:(1.51.3.0.0 OR 1.51.6.0.0 OR 1.51.10.0.0 OR 1.51.11.0.0 OR 1.51.12.0.0 OR 1.51.13.0.0 OR 1.51.14.0.0 OR 1.58.8.0.0) | 
| Uitstappen en wandelingen | heading=32 | terms.id:(0.7.0.0.0 OR 0.17.0.0.0 OR 0.41.0.0.0 OR 0.53.0.0.0) | 
| Uitgaan en feesten | heading=33 | terms.id:(0.28.0.0.0 OR 0.49.0.0.0 OR 0.50.4.0.0 OR 1.50.0.0.0) | 
| En-operator | & | AND |

Staat je rubriek of heading er niet tussen? Dan neem je best contact op met [vragen@uitdatabank.be](mailto:vragen@uitdatabank.be).

<a id="nis_codes"></a>
<h2>NIS-codes</h2>

Voor het geografisch afbakenen van je query kan je in SAPI 3 gebruik maken van NIS-codes. De verschillende NIS-codes vind je op ```http://documentatie.uitdatabank.be/content/search_api_3/latest/searching/geosearch/list_of_shapes/``` Er is ook een specifieke vertaaltabel voor de regio's.
