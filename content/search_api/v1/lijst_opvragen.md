---
---

# Methodes om lijsten op te vragen


## Constructie query

Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:

1) De 'collection' waarin moet gezocht worden. Er zijn drie mogelijkheden: events, actors of productions. Naar gelang de collectie krijg je dus lijsten van evenementen, actoren (locaties, organisatoren en/of performers) of producties.

2) De 'method' waarmee je wil werken: de manier waarop de opgevraagde lijst zal worden voorgesteld. Er zijn 3 methods: search, xmlview of report, elk met hun eigen data outputtype (zie verder).

3) De inputparameter(s): de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).

Dus: om zoekopdrachten te lanceren selecteer je een outputtype (method) en stuur je één of meerdere vragen (input parameters) naar de verzameling 'events', 'actors' of 'productions' (collection). Je moet deze definiëren in de URL build.uitdatabank.be/api/collection/method

Voorbeeld 1:

Om een full text query binnen de search method in de events collection te lanceren stuur je volgende request: 

```
http://build.uitdatabank.be/api/events/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&q=opera
```

Voorbeeld 2:

Om items van het type 'bibliotheek' binnen de xmlview method in de actors collection op te halen stuur je volgende request:

```
http://build.uitdatabank.be/api/actors/xmlview?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&locationtype=8.9.1.0.0
```

## Methods

Er zijn drie methods voorhanden om lijsten op te vragen: search, xmlview en report.

### report

Geeft aggregaten terug (totalen van events die plaatsvinden in een regio/gemeente, die plaatsvinden op een bepaald tijdstip)

Toepasbaar op events en productions.

### search

Hierboven gebruikt, geeft de "lijst representatie" terug van een object, een lijst van objectsamenvattingen. Deze method wordt bijvoorbeeld gebruikt op webpagina's met zoekresultaten en bevat titel, korte beschrijving, thumbnail enz.

Toepasbaar op events, actors en productions.

### xmlview

dit is een method met een trage (!) response aangezien ze een lijst van objecten teruggeeft met alle attributen voor elk object. xmlview wordt typisch gebruikt voor database synchronisatie. We adviseren sterk tegen gebruik van deze method en tegen database synchronisatie omdat je dan onze zoekmechanismen moet heruitvinden.

Toepasbaar op events en productions.

## Input parameters

Onderstaande tabel biedt een overzicht van alle inputparameters die kunnen worden aangesproken. Waar sprake is van parameters die categorisatiefacetten bevragen gaat het steeds om de parameters en ID's zoals terug te vinden op <a href="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml" target="_blank">http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml</a></p>

### Events

#### ZOEKEN OP WIE / WAT

| Naam parameter| Beschrijving | Datatype voor input | Voorbeeld | 
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, lange beschrijving, locatienaam, stad, uitvoerders, categorisatiefacetten, id, organisator, tags en markers.
Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR of dubbele aanhalingstekens voor exacte zoekopdrachten | Text | q=Puppet Shadows, q="Last shadow puppets", q=Last OR shadow OR puppets |
| agebetween | Minimum leeftijd tussen deze twee waarden (range splitsen met "..") | Number..Number | agebetween=3..6
| age | Minimum leeftijd | Number| age=18
| isfree | Gratis events |Boolean| isfree=true|
| permanent | Permanente events (vb. vaste collecties, monumenten, etc.)| Boolean | permanent=true|
| temporary | Tijdelijke events (met start- en einddatum) |Boolean | temporary=true | 
| lng | Vertalingen van events opzoeken |Text | lng=fr, lng=en, lng=de |

#### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">k</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Keywords en tags<br>
					Om een keyword uit te sluiten, voeg je een "!" toe. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">k=a-kaart<br>
					k=!a-kaart</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">locationkeyword</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Keywords toegevoegd aan de actorfiche van de locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">locationkeyword=UiTinVlaanderen filmlocatie </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">organiserkeyword</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Keywords toegevoegd aan de actorfiche van de organisator</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">organiserkeyword=cavaria</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">location</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle evenementen die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.<br>
					Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">GUID or Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">location=Kunstencentrum Vooruit<br>
					location=!CC De Spil </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">organiser</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle evenementen die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.<br>
					Om een organisatie uit te sluiten, voeg je een "!" toe </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">GUID or Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">organiser=15298A88-D02D-FF59-172893158E752D90<br>
					organiser=!Bou8 </p>
</td>
</tr></tbody></table>

#### ZOEKEN OP CATEGORIEËN

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">eventtype</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. concert, film, tentoonstelling<br>
					Om een bepaald type uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.<br>
					In je agenda kan je de types gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).<br></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">(x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">type=0.10.0.0.0;0.11.0.0.0<br>
					type=!0.10.0.0.0 </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">thema </p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.<br>
					Om een bepaald thema uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.<br>In je agenda kan je de thema's gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">(x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">thema=1.0.1.0.0;1.2.2.0.0<br>
					thema=muziek </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">targetaudience</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Tot welke doelgroep richt men zich met het aanbod?<br>
					Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">targetaudience=2.1.5.0.0</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">facility</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.<br>
					Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">facility=3.5.0.0.0</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">publicscope</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Tot welk publiek / pers richt men zich met het evenement: lokaal, regionaal, nationaal,...<br>
					Om bepaalde scopes uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">publicscope=6.1.0.0.0<br><span lang="EN-US" style="font-size: 8pt; font-weight: bold;" xml:lang="EN-US"> </p>
<p>&nbsp;</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">locationtype</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. kunstencentrum, bibliotheek,...<br>
					Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">locationtype=8.6.0.0.0</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">heading</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text ( Number)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">heading=14;15;16;17;18;19;20<br>
					heading=muziek;film</p>
</td>
</tr></tbody></table>


#### ZOEKEN OP KALENDERINFORMATIE

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="652"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="139">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">daterange</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Date..Date (yyyy-m-d..yyyy-m-dTH.m)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;">daterange=2010-04-21..2010-04-28</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">date</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle evenementen die plaatsvinden op één of meerdere tijdstippen </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Date (yyyy-m-d; yyyy-m-dTH.m)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;">date=2008-09-19;2008-09-20;2008-09-21</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">datetype</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">(d.i. de snelste methode) alle evenementen die tijdens een vastgestelde periode plaatsvinden.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (today, tomorrow, thisweek, nextweekend, thismonth, next30days, next3months, next6months, next12months)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;">datetype=today</p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP GEOGRAFISCHE INFORMATIE</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">zip</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Postcode van de locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">zip=2020</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">city</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Stad van de locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">city=Antwerpen</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">cityid</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">CityID van de stad van locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text (0000_CITY)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">cityid=2520_RANST</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">regio</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">ID of naam van een regio</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text or Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">regio=32<br>
					regio=Provincie Limburg </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">latlng</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Decimal;Decimal!Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal style1" style="text-align: left;">latlng=51.022350;4.547600!5km</p>
</td>
</tr></tbody></table>

#### ZOEKEN OP METADATA

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">createdby</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">UiTdatabank usernaam die het item heeft aangemaakt</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">createdby=syximport</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">changedsince</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Date (yyyy-m-d; yyyy-m-dTH.m)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">hasimage</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle evenementen met één of meerdere afbeeldingen.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table>

### Actors

#### ZOEKEN OP WIE / WAT

Naam parameter | Beschrijving | Datatype voor input | Voorbeeld
q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, organisatietype, ID. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en dubbele aanhalingstekens voor exacte zoekopdrachten | Text | q=Kunstencentrum Vooruit en 
q="Kunstencentrum Vooruit" en q=Kunstencentrum OR Vooruit

#### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">k</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Keywords toegevoegd aan de actorfiche van de locatie. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">k=UiTinVlaanderen filmlocatie </p>
</td>
</tr></tbody></table>

#### ZOEKEN OP CATEGORIEËN

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">type</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. kunstencentrum, bibliotheek,...<br>
					Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">locationtype=8.6.0.0.0</p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP GEOGRAFISCHE INFORMATIE</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">zip</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Postcode van de locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">zip=2020</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">city</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Stad van de locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">city=Antwerpen</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">cityid</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">CityID van de stad van locatie</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text (0000_CITY)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">cityid=2520_RANST</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">regio</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">ID of naam van een regio</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text or Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">regio=32<br>
					regio=Provincie Limburg </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">latlng</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Decimal;Decimal!Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal style1" style="text-align: left;">latlng=51.022350;4.547600!5km</p>
</td>
</tr></tbody></table>

#### ZOEKEN OP METADATA

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">changedsince</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Date (yyyy-m-d; yyyy-m-dTH.m)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">hasimage</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle evenementen met één of meerdere afbeeldingen.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table>

### Production

#### ZOEKEN OP WIE / WAT

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="659"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="162">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="255">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="152">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p class="MsoNormal" style="text-align: center;">Voobeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">q</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal" style="">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</p>
<ul type="disc"><li class="MsoNormal" style="">
						titel</li>
<li class="MsoNormal" style="">
						korte beschrijving</li>
<li class="MsoNormal" style="">
						uitvoerders</li>
<li class="MsoNormal" style="">
						categorisatiefacetten</li>
<li class="MsoNormal" style="">
						ID</li>
</ul><p class="MsoNormal" style="">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</p>
<ul type="disc"><li class="MsoNormal" style="">
						OR</li>
<li class="MsoNormal" style="">
						Dubbele aanhalingstekens voor exacte zoekopdrachten</li>
</ul><p class="MsoNormal">&nbsp;</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Text</p>
</td>
<td align="left" style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Puppet Shadows</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q="Last shadow puppets"</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Last OR shadow OR puppets</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">agebetween</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal">Minimum leeftijd tussen deze twee waarden (range splitsen met "..")</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Number..Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;">agebetween=3..6</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">age</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal">Minimum leeftijd</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;">age=18</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">isfree</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal">Gratis 
</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;">isfree=true</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">permanent</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal">Permanente events (vb. vaste collecties, monumenten, etc.)</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;">permanent=false</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal">temporary</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal">Tijdelijke events (met start- en einddatum)</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;">temporary=false</p>
</td>
</tr></tbody></table>

#### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">k</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Keywords en tags<br>
					Om een keyword uit te sluiten, voeg je een "!" toe. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">k=a-kaart<br>
					k=!a-kaart</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">location</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle producties die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.<br>
					Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">GUID or Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">location=Kunstencentrum Vooruit<br>
					location=!CC De Spil </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">organiser</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Alle producties die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.<br>
					Om een organisatie uit te sluiten, voeg je een "!" toe </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">GUID or Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;">organiser=15298A88-D02D-FF59-172893158E752D90<br>
					organiser=!Bou8 </p>
</td>
</tr></tbody></table>

#### ZOEKEN OP CATEGORIEËN

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">eventtype</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. concert, film, tentoonstelling<br>
					Om een bepaald type uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.<br></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">(x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">type=0.10.0.0.0;0.11.0.0.0<br>
					type=!0.10.0.0.0 </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">thema </p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.<br>
					Om een bepaald thema uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">(x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">thema=1.0.1.0.0;1.2.2.0.0<br>
					thema=muziek </p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">targetaudience</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">Tot welke doelgroep richt men zich met het aanbod?<br>
					Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">targetaudience=2.1.5.0.0</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">facility</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.<br>
					Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Text (x.x.x.x.x)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">facility=3.5.0.0.0</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal">heading</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;">heading=14;15;16;17;18;19;20<br>
					heading=muziek;film</p>
</td>
</tr></tbody></table>

#### ZOEKEN OP METADATA

<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">changedsince</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle producties versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Date (yyyy-m-d; yyyy-m-dTH.m)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">hasimage</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Alle evenementen met één of meerdere afbeeldingen.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Boolean</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table><h1 class="rteleft">
	<a name="7" id="7"></a>Parameters die de output wijzigen</h1>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;">Naam parameter</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;">Beschrijving</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;">Datatype voor input</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;">Voorbeeld</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">format</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Het formaat van de return. Het default response formaat is XML. Om een response in het JSON formaat te ontvangen, gebruik je format=json</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text (json)</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;">format=json</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">sort</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Resultaten kunnen gesorteerd worden. Standaard worden de resultaten gesorteerd volgens een specifiek algoritme dat nabijheid in tijd, het publieksbereik van het event, de volledigheid/kwaliteit van de informatie en de duurtijd van het evenement in rekening neemt.</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text (age, title, location, city, date, created, weight, weightweek, proximity) <b>Opgepast, 'proximity' werkt enkel in combinatie met 'latlng'</b>.</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">sort=city desc</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">page</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Resultatenpagina die moet worden getoond. Maw de huidige pagina in het totaal aan pagina's. De default waarde is 1. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">page=2</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">pagelength</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Het aantal items op een resultatenpagina (default 50)</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Number</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">pagelength=10</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal">callback</p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal">Gebruikt om json return op te vragen. In de callback parameter kan je de javascript wrapper functie opnemen die je wil hanteren.<br>
					Enkel mogelijk bij events, niet bij actors en productions. </p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal">Text</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">callback=resultset</p>
</td>
</tr></tbody></table>

 | 

cityid=2520_RANST

 |
| 

regio

 | 

ID of naam van een regio

 | 

Text or Number

 | 

regio=32
regio=Provincie Limburg

 |
| 

latlng

 | 

GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.

 | 

Decimal;Decimal!Number

 | 

latlng=51.022350;4.547600!5km

 |

#### ZOEKEN OP METADATA

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

createdby

 | 

UiTdatabank usernaam die het item heeft aangemaakt

 | 

Text

 | 

createdby=syximport

 |
| 

changedsince

 | 

Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).

 | 

Date (yyyy-m-d; yyyy-m-dTH.m)

 | 

changedsince=2010-01-19T20.00

 |
| 

hasimage

 | 

Alle evenementen met één of meerdere afbeeldingen.

 | 

Boolean

 | 

hasimage=true

 |

# <a name="5" id="5"></a>Actors

ZOEKEN OP WIE / WAT

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voobeeld

 |
| 

q

 | 

Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:

*   titel
*   korte beschrijving
*   organisatietype
*   ID

Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:

*   OR
*   Dubbele aanhalingstekens voor exacte zoekopdrachten

 | 

Text

 | 

q=Kunstencentrum Vooruit

q="Kunstencentrum Vooruit"

q=Kunstencentrum OR Vooruit

 |

ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

k

 | 

Keywords toegevoegd aan de actorfiche van de locatie.

 | 

Text

 | 

k=UiTinVlaanderen filmlocatie

 |

ZOEKEN OP CATEGORIEËN

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

type

 | 

bijv. kunstencentrum, bibliotheek,...
Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.

 | 

Text (x.x.x.x.x)

 | 

locationtype=8.6.0.0.0

 |

ZOEKEN OP GEOGRAFISCHE INFORMATIE

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

zip

 | 

Postcode van de locatie

 | 

Number

 | 

zip=2020

 |
| 

city

 | 

Stad van de locatie

 | 

Text

 | 

city=Antwerpen

 |
| 

cityid

 | 

CityID van de stad van locatie

 | 

Text (0000_CITY)

 | 

cityid=2520_RANST

 |
| 

regio

 | 

ID of naam van een regio

 | 

Text or Number

 | 

regio=32
regio=Provincie Limburg

 |
| 

latlng

 | 

GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.

 | 

Decimal;Decimal!Number

 | 

latlng=51.022350;4.547600!5km

 |

#### ZOEKEN OP METADATA

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

changedsince

 | 

Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).

 | 

Date (yyyy-m-d; yyyy-m-dTH.m)

 | 

changedsince=2010-01-19T20.00

 |
| 

hasimage

 | 

Alle evenementen met één of meerdere afbeeldingen.

 | 

Boolean

 | 

hasimage=true

 |

### Production

#### ZOEKEN OP WIE / WAT

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, uitvoerders,categorisatiefacetten, ID. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en dubbele aanhalingstekens voor exacte zoekopdrachten | Text | q=Puppet Shadows of q="Last shadow puppets" of q=Last OR shadow OR puppets |
| agebetween | Minimum leeftijd tussen deze twee waarden (range splitsen met "..") | Number..Number | agebetween=3..6 |
| age | Minimum leeftijd | Number | age=18 |
| isfree | Gratis events | Boolean | isfree=true
| permanent | Permanente events (vb. vaste collecties, monumenten, etc.) | Boolean | permanent=false
| temporary | Tijdelijke events (met start- en einddatum) | Boolean | temporary=false

#### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

k

 | 

Keywords en tags
Om een keyword uit te sluiten, voeg je een "!" toe.

 | 

Text

 | 

k=a-kaart
k=!a-kaart

 |
| 

location

 | 

Alle producties die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.
Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen.

 | 

GUID or Text

 | 

location=Kunstencentrum Vooruit
location=!CC De Spil

 |
| 

organiser

 | 

Alle producties die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.
Om een organisatie uit te sluiten, voeg je een "!" toe

 | 

GUID or Text

 | 

organiser=15298A88-D02D-FF59-172893158E752D90
organiser=!Bou8

 |

ZOEKEN OP CATEGORIEËN

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

eventtype

 | 

bijv. concert, film, tentoonstelling
Om een bepaald type uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.


 | 

(x.x.x.x.x)

 | 

type=0.10.0.0.0;0.11.0.0.0
type=!0.10.0.0.0

 |
| 

thema

 | 

Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.
Om een bepaald thema uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.

 | 

(x.x.x.x.x)

 | 

thema=1.0.1.0.0;1.2.2.0.0
thema=muziek

 |
| 

targetaudience

 | 

Tot welke doelgroep richt men zich met het aanbod?
Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.

 | 

Text (x.x.x.x.x)

 | 

targetaudience=2.1.5.0.0

 |
| 

facility

 | 

bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.
Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.

 | 

Text (x.x.x.x.x)

 | 

facility=3.5.0.0.0

 |
| 

heading

 | 

De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie.

 | 

Number

 | 

heading=14;15;16;17;18;19;20
heading=muziek;film

 |

ZOEKEN OP METADATA

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

changedsince

 | 

Alle producties versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).

 | 

Date (yyyy-m-d; yyyy-m-dTH.m)

 | 

changedsince=2010-01-19T20.00

 |
| 

hasimage

 | 

Alle evenementen met één of meerdere afbeeldingen.

 | 

Boolean

 | 

hasimage=true

 |

# <a name="7" id="7"></a>Parameters die de output wijzigen

| 

Naam parameter

 | 

Beschrijving

 | 

Datatype voor input

 | 

Voorbeeld

 |
| 

format

 | 

Het formaat van de return. Het default response formaat is XML. Om een response in het JSON formaat te ontvangen, gebruik je format=json

 | 

Text (json)

 | 

format=json

 |
| 

sort

 | 

Resultaten kunnen gesorteerd worden. Standaard worden de resultaten gesorteerd volgens een specifiek algoritme dat nabijheid in tijd, het publieksbereik van het event, de volledigheid/kwaliteit van de informatie en de duurtijd van het evenement in rekening neemt.

 | 

Text (age, title, location, city, date, created, weight, weightweek, proximity) **Opgepast, 'proximity' werkt enkel in combinatie met 'latlng'**.

 | 

sort=city desc

 |
| 

page

 | 

Resultatenpagina die moet worden getoond. Maw de huidige pagina in het totaal aan pagina's. De default waarde is 1\.

 | 

Number

 | 

page=2

 |
| 

pagelength

 | 

Het aantal items op een resultatenpagina (default 50)

 | 

Number

 | 

pagelength=10

 |
| 

callback

 | 

Gebruikt om json return op te vragen. In de callback parameter kan je de javascript wrapper functie opnemen die je wil hanteren.
Enkel mogelijk bij events, niet bij actors en productions.

 | 

Text

 | 

callback=resultset

 |

