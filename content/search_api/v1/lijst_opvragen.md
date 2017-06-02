---
---

# Constructie query

Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:

1) De 'collection' waarin moet gezocht worden. Er zijn drie mogelijkheden: events, actors of productions. Naar gelang de collectie krijg je dus lijsten van evenementen, actoren (locaties, organisatoren en/of performers) of producties.

2) De 'method' waarmee je wil werken: de manier waarop de opgevraagde lijst zal worden voorgesteld. Er zijn 3 methods: search, xmlview of report, elk met hun eigen data outputtype (zie verder).

3) De 'inputparameter(s)': de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).

Dus: om zoekopdrachten te lanceren selecteer je een outputtype (method) en stuur je één of meerdere vragen (input parameters) naar de verzameling 'events', 'actors' of 'productions' (collection). Je moet deze definiëren in de URL build.uitdatabank.be/api/collection/method?.

Bijvoorbeeld:

- om een full text query binnen de search method in de events collection te lanceren stuur je volgende request:
http://build.uitdatabank.be/api/events/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&q=opera

- om items van het type 'bibliotheek' binnen de xmlview method in de actors collection op te halen stuur je volgende request
http://build.uitdatabank.be/api/actors/xmlview?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&locationtype=8.9.1.0.0

## Methodes

Er zijn drie methods voorhanden om lijsten op te vragen: search, xmlview en report.

| Naam | Beschrijving | Toepasbaar op |
| actors | events | productions |
| report | <span lang="NL-BE">geeft aggregaten terug (totalen van events die plaatsvinden in een regio/gemeente, die plaatsvinden op een bepaald tijdstip)</span> | - | X | X |
| search | <span lang="NL-BE">hierboven gebruikt, geeft de "lijst representatie" terug van een object, een lijst van objectsamenvattingen. Deze method wordt bijvoorbeeld gebruikt op webpagina's met zoekresultaten en bevat titel, korte beschrijving, thumbnail enz.</span> | X | X | X |
| xmlview | <span lang="NL-BE">dit is een method met een trage (!) response aangezien ze een lijst van objecten teruggeeft met alle attributen voor elk object. xmlview wordt typisch gebruikt voor database synchronisatie. We adviseren sterk tegen gebruik van deze method en tegen database synchronisatie omdat je dan onze zoekmechanismen moet heruitvinden.</span> | - | X | X |

## Input parameters

Onderstaande tabel biedt een overzicht van alle inputparameters die kunnen worden aangesproken. Waar sprake is van parameters die categorisatiefacetten bevragen gaat het steeds om de parameters en ID's zoals terug te vinden op [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml)

## Events

### ZOEKEN OP WIE / WAT

| Naam parameter | Beschrijving | Datatype voor input | Voobeeld |
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, lange omschrijving, locatienaam, stad, uitvoerders, categorisatiefacetten, ID, organisator en tags en markers. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en dubbele aanhalingstekens voor exacte zoekopdrachten | Text | q=Puppet Shadows, q="Last shadow puppets", q=Last OR shadow OR puppets |
| agebetween | Minimum leeftijd tussen deze twee waarden (range splitsen met "..") | Number..Number | agebetween=3..6 |
| age | Minimum leeftijd | Number | age=18 |
| isfree | Gratis events | Boolean | isfree=true |
| permanent | Permanente events (vb. vaste collecties, monumenten, etc.) | Boolean | permanent=true |
| temporary | Tijdelijke events (met start- en einddatum) | Boolean | temporary=true |
| lng | Vertalingen van events opzoeken | Text | lng=fr, lng=en, lng=de |

### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| k | Keywords en tags
Om een keyword uit te sluiten, voeg je een "!" toe. | Text | k=a-kaart
k=!a-kaart |
| locationkeyword | Keywords toegevoegd aan de actorfiche van de locatie | Text | locationkeyword=UiTinVlaanderen filmlocatie |
| organiserkeyword | Keywords toegevoegd aan de actorfiche van de organisator | Text | organiserkeyword=cavaria |
| location | Alle evenementen die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query. Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. | GUID or Text | location=Kunstencentrum Vooruit
location=!CC De Spil |
| organiser | Alle evenementen die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.
Om een organisatie uit te sluiten, voeg je een "!" toe | GUID or Text | organiser=15298A88-D02D-FF59-172893158E752D90
organiser=!Bou8 |

### ZOEKEN OP CATEGORIEËN

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| eventtype | bijv. concert, film, tentoonstelling | Om een bepaald type uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label. In je agenda kan je de types gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder). | (x.x.x.x.x) | type=0.10.0.0.0;0.11.0.0.0
type=!0.10.0.0.0 |
| thema | Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek. Om een bepaald thema uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. In je agenda kan je de thema's gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder). | (x.x.x.x.x) | thema=1.0.1.0.0;1.2.2.0.0 of thema=muziek |
| targetaudience | Tot welke doelgroep richt men zich met het aanbod? Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | targetaudience=2.1.5.0.0 |
| facility | bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz. Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | facility=3.5.0.0.0 |
| publicscope | Tot welk publiek / pers richt men zich met het evenement: lokaal, regionaal, nationaal,... Om bepaalde scopes uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | publicscope=6.1.0.0.0   |
| locationtype | bijv. kunstencentrum, bibliotheek,... Om een bepaald locatietype uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | locationtype=8.6.0.0.0 |
| heading | De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. | Text ( Number) | heading=14;15;16;17;18;19;20
heading=muziek;film |

### ZOEKEN OP KALENDERINFORMATIE

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| daterange | Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden. | Date..Date (yyyy-m-d..yyyy-m-dTH.m) | daterange=2010-04-21..2010-04-28 |
| date | Alle evenementen die plaatsvinden op één of meerdere tijdstippen | Date (yyyy-m-d; yyyy-m-dTH.m) | date=2008-09-19;2008-09-20;2008-09-21 |
| datetype | (d.i. de snelste methode) alle evenementen die tijdens een vastgestelde periode plaatsvinden. | Text (today, tomorrow, thisweek, nextweekend, thismonth, next30days, next3months, next6months, next12months) | datetype=today |

### ZOEKEN OP GEOGRAFISCHE INFORMATIE

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| zip | Postcode van de locatie | Number | zip=2020 |
| city | Stad van de locatie | Text | city=Antwerpen |
| cityid | CityID van de stad van locatie | Text (0000_CITY) | cityid=2520_RANST |
| regio | ID of naam van een regio | Text or Number | regio=32
regio=Provincie Limburg |
| latlng | GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius. | Decimal;Decimal!Number | latlng=51.022350;4.547600!5km |

### ZOEKEN OP METADATA

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| createdby | UiTdatabank usernaam die het item heeft aangemaakt | Text | createdby=syximport |
| changedsince | Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation). | Date (yyyy-m-d; yyyy-m-dTH.m) | changedsince=2010-01-19T20.00 |
| hasimage | Alle evenementen met één of meerdere afbeeldingen. | Boolean | hasimage=true |

## Actors

### ZOEKEN OP WIE / WAT

| Naam parameter | Beschrijving | Datatype voor input | Voobeeld |
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, organisatietype, ID. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en dubbele aanhalingstekens voor exacte zoekopdrachten
| Text | q=Kunstencentrum Vooruit, q="Kunstencentrum Vooruit", q=Kunstencentrum OR Vooruit |

### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| k | Keywords toegevoegd aan de actorfiche van de locatie. | Text | k=UiTinVlaanderen filmlocatie |

### ZOEKEN OP CATEGORIEËN

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| type | bijv. kunstencentrum, bibliotheek,... Om een bepaald locatietype uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | locationtype=8.6.0.0.0 |

### ZOEKEN OP GEOGRAFISCHE INFORMATIE

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| zip | Postcode van de locatie | Number | zip=2020 |
| city | Stad van de locatie | Text | city=Antwerpen |
| cityid | CityID van de stad van locatie | Text (0000_CITY) | cityid=2520_RANST |
| regio | ID of naam van een regio | Text or Number | regio=32
regio=Provincie Limburg |
| latlng | GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius. | Decimal;Decimal!Number | latlng=51.022350;4.547600!5km |

### ZOEKEN OP METADATA

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| changedsince | Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation). | Date (yyyy-m-d; yyyy-m-dTH.m) | changedsince=2010-01-19T20.00 |
| hasimage | Alle evenementen met één of meerdere afbeeldingen. | Boolean | hasimage=true |

## Production

### ZOEKEN OP WIE / WAT

| Naam parameter | Beschrijving | Datatype voor input | Voobeeld |
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, uitvoerders, categorisatiefacetten of ID. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en Dubbele aanhalingstekens voor exacte zoekopdrachten. | Text | q=Puppet Shadows, q="Last shadow puppets", q=Last OR shadow OR puppets |
| agebetween | Minimum leeftijd tussen deze twee waarden (range splitsen met "..") | Number..Number | agebetween=3..6 |
| age | Minimum leeftijd | Number | age=18 |
| isfree | Gratis events | Boolean | isfree=true |
| permanent | Permanente events (vb. vaste collecties, monumenten, etc.) | Boolean | permanent=false |
| temporary | Tijdelijke events (met start- en einddatum) | Boolean | temporary=false |

### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| k | Keywords en tags
Om een keyword uit te sluiten, voeg je een "!" toe. | Text | k=a-kaart
k=!a-kaart |
| location | Alle producties die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.
Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. | GUID or Text | location=Kunstencentrum Vooruit
location=!CC De Spil |
| organiser | Alle producties die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.
Om een organisatie uit te sluiten, voeg je een "!" toe | GUID or Text | organiser=15298A88-D02D-FF59-172893158E752D90
organiser=!Bou8 |

### ZOEKEN OP CATEGORIEËN

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| eventtype | bijv. concert, film, tentoonstelling. Om een bepaald type uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | (x.x.x.x.x) | type=0.10.0.0.0;0.11.0.0.0
type=!0.10.0.0.0 |
| thema | Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.
Om een bepaald thema uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label. | (x.x.x.x.x) | thema=1.0.1.0.0;1.2.2.0.0
thema=muziek |
| targetaudience | Tot welke doelgroep richt men zich met het aanbod?
Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | targetaudience=2.1.5.0.0 |
| facility | bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.
Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | facility=3.5.0.0.0 |
| heading | De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. | Number | heading=14;15;16;17;18;19;20
heading=muziek;film |

### ZOEKEN OP METADATA

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| changedsince | Alle producties versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation). | Date (yyyy-m-d; yyyy-m-dTH.m) | changedsince=2010-01-19T20.00 |
| hasimage | Alle evenementen met één of meerdere afbeeldingen. | Boolean | hasimage=true |

## Parameters die de output wijzigen

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| format | Het formaat van de return. Het default response formaat is XML. Om een response in het JSON formaat te ontvangen, gebruik je format=json | Text (json) | format=json |
| sort | Resultaten kunnen gesorteerd worden. Standaard worden de resultaten gesorteerd volgens een specifiek algoritme dat nabijheid in tijd, het publieksbereik van het event, de volledigheid/kwaliteit van de informatie en de duurtijd van het evenement in rekening neemt. | Text (age, title, location, city, date, created, weight, weightweek, proximity) Opgepast, 'proximity' werkt enkel in combinatie met 'latlng'. | sort=city desc |
| page | Resultatenpagina die moet worden getoond. Maw de huidige pagina in het totaal aan pagina's. De default waarde is 1. | Number | page=2 |
| pagelength | Het aantal items op een resultatenpagina (default 50) | Number | pagelength=10 |
| callback | Gebruikt om json return op te vragen. In de callback parameter kan je de javascript wrapper functie opnemen die je wil hanteren.
Enkel mogelijk bij events, niet bij actors en productions. | Text | callback=resultset |
