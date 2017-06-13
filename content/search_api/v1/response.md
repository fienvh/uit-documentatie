---
---

# Response

De UiTdatabank beantwoordt requests als XML of JSON responses, conform het CdbXML 3.1 formaat. Afhankelijk van de aangeroepen method wordt een lijstrepresentatie, detailrepresentatie of report view verzonden.

* search, Lijstrepresentatie -  http://build.uitdatabank.be/api/actors/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C
* xmlview, Detailrepresentatie -  http://build.uitdatabank.be/api/productions/xmlview?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C
* report, Totalen -  http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C

## search method response: "lijstrepresentatie"

Request
```
http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&heading=Muziek&regio=Provincie%20Limburg&pagelength=2
```

Response

394

| Attribuut | Verplicht | Beschrijving | Meertalig | Voorbeeld |
| cdbid | x | ID toegevoegd door de UiTdatabank. | cdbid="a0b0aa2f-2d26-43f9-a443-4409730639c4" |
| externalid | x | ID uit de brondatabank | externalid="CDB:e448e722-e243-47bb-979e-b9c7419ea104" |
| title | x | Titel | X - wordt aangeleverd door invoerder | title="8y Culture Club Anniversary Party" |
| shortdescription | x | Korte beschrijving (400 chars) | X - wordt aangeleverd door invoerder | shortdescription="8YCC… Eight Years Culture Club… We’re proud!" |
| thumbnail | Afbeelding (zie voorbeeld hiernaast – thumbnail grootte wordt als query parameters aan de URL toegevoegd) | thumbnail="[http://media.uitdatabank.be/20100401/6fdb1e62-d447-412c-96e2-fe103f55639f.png?maxwidth=162&amp;maxheight=109"](http://media.uitdatabank.be/20100401/6fdb1e62-d447-412c-96e2-fe103f55639f.png?maxwidth=162&amp;maxheight=109") |
| calendersummary | x | Ongestructureerde weergave van de tijdsinformatie | X - wordt automatisch gegenereerd | calendarsummary="vrij 30/04/10" |
| heading | x | Navigatie rubriek | X - wordt automatisch gegenereerd | heading="Nachtleven" |
| city | Naam van de stad of gemeente | X - wordt automatisch gegenereerd | city="Gent" |
| zip | Postcode | zip="9000" |
| location | x | Naam van de locatie | ocation="ICC international convention center ghent " |
| locationid | ID van de locatie (vb. voor speellijsten samen te stellen van alle events die op de betreffende locatie plaatsvinden) | locationid="31E39072-94CC-6CD3-E5ED453957C4D33D" |
| reservation | Rechtstreekse ticketinglink | reservation="[https://esro5.basic-orange.be/digipolis/order.asp?evt=14041&](https://esro5.basic-orange.be/digipolis/order.asp?evt=14041&)|oc=2" |
| agefrom | Leeftijdsklasse | agefrom="18" |
| performers | Uitvoerders | performers="Cash Money; Dada Life; Davidov; Etienne de Crecy; Gus &amp; Sense" |
| available_to | Datum waarop het evenement verlopen is. | available_to="5/1/2010 12:00:00 AM" |
| created | x | Datum waarop het evenement werd aangemaakt /aangepast. | created="4/5/2010 7:12:58 PM" |
| latlng | Latitude en longitude | latlng="51.038195;3.723034" |
| address | Adres van de locatie (met standaard notering [straat][, ][zip][ ][gemeente][, ][landcode]) | address="Van Rysselberghedreef - Citadelpark 2 bus 1, 9000 Gent, BE" |

## report method response: "totalen"

De report methode maakt het mogelijk om totalen te tonen binnen een zoekopdracht. Bijv. http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&heading=Muziek&regio=Provincie%20Limburg

geeft alle concerten in Limburg ingedeeld:

per rubriek (in dit geval pop en rock, klassiek enz.)
op basis van geografische gegevens (per regio, stad en locatie)
volgens leeftijdsklasse
per tijdseenheid (vb. vandaag, morgen, komende 30 dagen enz.)
Dit maakt het mogelijk bij navigatie-items totalen te zetten en gebruikers de data te laten filteren ("drill down"). Een voorbeeld hiervan is de linkerkolom op UiTinVlaanderen.be die verschijnt bij de lijstoverzichten van evenementen. Bijv. http://www.uitinvlaanderen.be/agenda/r?query=muziek

Request
http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&heading=Muziek&Regio=Provincie%20Limburg

Response

| Attribuut | Beschrijving |
| //headings | Het aantal evenementen binnen de zoekopdracht ingedeeld per rubriek en subrubriek. De headings zijn meertalig. |
| //geo | Het aantal evenementen binnen de zoekopdracht ingedeeld per regio, gemeente en evt. locatie in die gemeente (vb. DeSingel). De regio's en gemeenten zijn meertalig |
| //time | Alle evenementen binnen de zoekopdracht die vandaag, deze week, volgende week enz. plaatsvinden. |
| //age | Alle evenementen binnen de zoekopdracht ingedeeld per leeftijdscategorie. |
| //item/@name | De naam van de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie, vb. "pop en rock", "Maasland", "nextmonth", "4-5" |
| //item/@id | De interne ID van de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie. |
| //item/@total | Het totaal aantal event items voor de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie. |
| //item/@link | De UiTdatabank Search API "link" naar het lijstoverzicht voor het betreffende totaal. |

## object response (vanuit lijstrespresentatie)

De detailrepresentatie van een specifiek object bevat de velden die (1) ook beschikbaar zijn in de lijstrepresentatie, (2) metadata velden die in feite niet relevant zijn voor output, maar (3) ook een aantal velden die meer informatie over het event verschaffen. Deze informatie kan relevant zijn om te tonen op een detailfiche, bijv. extra links naar afbeeldingen, videofragmenten of vertalingen, uitgebreide contactinformatie, tags, taal waarin een event wordt opgevoerd enz.

Een overzicht van alle elementen en attributen is beschikbaar op de pagina Uitwisselingsformaat in xml.

Request
http://build.uitdatabank.be/api/event/77C51021-C4D4-1499-2E01EE6F8E80B641?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C

Response

6

TentoonstellingGeschiedenisKinderen vanaf 6 jaar (6+)Internationaalgrm@limburg.be
+32 12 670 333http://www.galloromeinsmuseum.be/ di, woe, do, vrij van 09:00 tot 17:00 za en zo van 10:00 tot 18:00 (ma gesloten) Gallo-Romeins Museume704e70d-f9ef-4c83-a71d-f47809f84b0e.jpgjpeghttp://media.uitdatabank.be/20090525/e704e70d-f9ef-4c83-a71d-f47809f84b0e.jpg Het Gallo-Romeins Museum maakt middeleeuwen...nlTentoonstellingenTentoonstellingen met kinderen

TongerenBE5.46642850.78132915Kielenstraat3700
Provinciaal Gallo-Romeins Museum
Provinciaal Gallo-Romeins Museum

| Attribuut | Verplicht | Meertalig* | Beschrijving |
| //event/@availablefrom | x | De embargodatum. D.i. de datum vanaf wanneer het object mag gepubliceerd worden. De UiTdatabank Search API verstuurt enkel objecten waarvan de embargodatum overschreden is. |
| //event/@availableto | x | De archiefdatum. D.i. de datum vanaf wanneer het event niet meer relevant is. Standaard is dit de dag nadat het event laatst plaatsvond. De archiefdatum is relevant voor het geval wanneer je event objecten in je eigen databank opslaat, zodat je adhv een archiveringscript het totaal aantal evenementen in jouw repository beperkt kan houden. |
| //event/@cdbid | x | De ID die door de UiTdatabank aan het object werd toegekend. |
| //event/@createdby | x | De naam van de auteur van het object |
| //event/@creationdate | x | De datum waarop het object aan de UiTdatabank werd toegevoegd. |
| //event/@externalid | x | De ID van het object in de brondatabank. |
| //event/@lastupdated | x | De datum waarop het object laatst werd aangepast. |
| //event/@lastupdatedby | x | De auteur van de laatste aanpassing. |
| //event/@owner | x | De eigenaar van het object. |
| //event/@pctcomplete | x | Het volledigheidspercentage. Dit getal wordt gebruikt in het standaard ranking algoritme van de UiTdatabank Search API en wordt getoond in de UiTdatabank invoeromgeving ([www.uitdatabank.be](http://www.uitdatabank.be)) |
| //event/@published | x | Is het item "gepubliceerd"? In het geval van een call naar de UiTdatabank Search API zullen enkel gepubliceerde events worden teruggezonden. |
| //event/@validator | x | Wie stond in voor de goedkeuring van het event? |
| //event/@wfstatus | x | In welke "workflow status" bevindt het event zich? |
| //event/@isparent | x | Is het event een "koepelaanbod", vb. Gentse Feesten. Als een event een koepelaanbod is kan op de detailfiche gezocht worden naar alle evenementen die in het kader van het betreffende event plaatsvinden door de titel van het event door te geven naar de API in de "keyword" input parameter. |
| //event/agefrom | Voor welke leeftijd is het event geschikt? |
| //event/calendar | x | Tijdsinformatie op een gestructureerde manier weergegeven. Voor output is er een ongestructureerde weergave beschikbaar in //eventdetail/calendarsummary. |
| //event/categories | x | De categorieën van het betreffende event: type, thema, doelgroep, publieksbereik ea.. |
| //event/contactinfo | x | Telefoonnrs, e-mailadressen en deeplinks waar men terecht kan voor meer informatie. |
| //eventdetail/@lang | x | In het eventdetail element wordt de "ongestructureerde" tekstuele informatie opgenomen. Standaard is de informatie beschikbaar in het Nederlands. Bijkomend zijn vertalingen mogelijk naar Frans, Engels en Duits. |
| //eventdetail/calendarsummary | x | X - wordt automatisch gegenereerd | Ongestructureerde weergave van de tijdsinformatie. |
| //eventdetail/performers | Door wie wordt het event opgevoerd, bijv. de regisseur, de muzikanten, enz. In het //performer element zit minstens de naam van de uitvoerder en evt de rol die ze spelen in het event, bijv trompettist, lezer, ... |
| //eventdetail/media | De thumbnail voor het event maar daarnaast bijkomende verwijzingen naar tal van andere externe objecten zoals videofragmenten, deeplinks naar reservatie informatie enz. |
| //eventdetail/price | De richtprijs voor het event en eventueel extra prijsinformatie. Als //price/pricevalue=0 dan is het een gratis event. |
| //eventdetail/shortdescription | X - wordt aangeleverd door de invoerder | Bijkomende korte beschrijving over het event |
| //eventdetail/title | x | X - wordt aangeleverd door de invoerder | Titel van het event |
| //event/language | Taal waarin het event wordt opgevoerd |
| //event/heading | X - wordt automatisch gegenereerd | Rubriek waar het event in wordt ondergebracht |
| //event/location | x | De locatie waar het event plaatsvindt. Dit bestaat uit het fysieke adres en minstens de naam van de locatie. Het is evenwel mogelijk dat een volledig overzicht van het Actor object hierin geïntegreerd wordt. |
| //event/organiser | De organisator van het event. |

*Meertaligheid: de informatie onder <eventdetails> wordt steeds in de beschikbare talen meegegeven, ongeacht of je een parameter 'lng' meegeeft in je query. Geef je in de parameter 'lng' in je query een andere taal mee, dan worden de <headings> in die specifieke taal weergegeven.

xmlview method response: "detailrepresentatie"

Dit is dezelfde representatie als object response. xmlview verstuurt een lijst van objecten, met alle attributen, geformatteerd op dezelfde wijze als object response.
